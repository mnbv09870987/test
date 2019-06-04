package MyApp::Helper;

use strict;
use warnings;

use MyApp::Schema;



sub add_helpers {
	my( $app ) =  @_;


	$app->helper( db        => \&db_connection );

	$app->helper( model => \&model );
	$app->helper( atomic_change => \&start_transaction );

	$app->helper( resource =>  \&resource );


    $app->helper( client_ip   => \&client_ip   );
}



## DB
my $schema;
sub db_connection {
	my $c =  shift;
	return $schema   if $schema;

	my $DB =  $c->app->config->{ db };
	$DB->{ DSN } =  sprintf "dbi:%s:dbname=%s;host=%s;port=%s",  @$DB{ qw/ DRVR NAME HOST PORT / };

	$schema //=  MyApp::Schema->connect( $DB->{ DSN },  @$DB{ qw/ USER PASS / },  {
		AutoCommit => 1,
		RaiseError => 1,
		PrintError => 1,
		ShowErrorStatement => 1,
		# HandleError => sub{ DB::x; 1; },
		# unsafe => 1,
		quote_char => '"',  # Syntax error: SELECT User.id because of reserwed word
	});

	return $schema;
}



sub model {
	my( $c, $table_name ) =  (shift,shift);

	# Get table name from last part of the caller package:
	# App::Controller::User  ->  User
	$table_name //=  ((ref $c) =~ /([^:]*)$/)[0];
	my $insecure =  $table_name =~ s/^\!(.*)$/$1/; # HUG

	my $rs =  $c->db->resultset( $table_name );
	return $rs   if $insecure  ||  $_[0]  &&  $_[0] eq 'insecure';
	return $rs->guard( $c );
}



sub start_transaction {	shift->db->txn_scope_guard }



sub resource {
	my $c =  shift;

	# DO NOT CACHE 'insecure' requests
	return $c->rows( undef, @_ )->find( $c->param( 'id' ) )   if @_;

	return $c->{ resource }   if $c->{ resource };


	my $id =  $c->param( 'id' );
	unless( $id  &&  ($c->{ resource } //=  $c->rows( undef, @_ )->find( $id )) ) {
		$id //= 'undef';
		$c->stash->{ error }{ message } =  "Requested resource ID:$id not_found";
		$c->reply->not_found;

		return undef;
	}

	# TODO: setup 'row' stash value

	return $c->{ resource };
}




sub client_ip {
	my( $c ) =  @_;

	return $c->req->headers->header('CF-Connecting-IP')
	   // $_[0]->req->headers->header('X-Real-IP')
	   // $_[0]->tx->remote_address
	;
}



sub client_country_code {
	my( $c, $ip ) =  @_;

	my $name =  '';
	eval{ # Catch exceptions for localhost
		my $l =  $c->client_location->city( ip => $ip // $c->client_ip );
		$name =  uc $l->country->iso_code;
		# Great Britian consist of three countries, as subdivisions
		$name .=  '-' .uc +($l->subdivisions)[0]->iso_code
		   if $name eq 'GB';
	};

	return $name;
}



1;
