package MyApp::Controller::Database;
use Mojo::Base 'Mojolicious::Controller';

# This action will render a template
sub query {
	my $c =  shift; # my( $c ) =  @_;

	my $rs =  $c->model( 'User' );

	my @text;
	while( my $row =  $rs->next ) {
		push @text, $row->name;
	}

	$c->render(  text => 'OK<br>' ."@text" );
}

sub insert {
	my $c =  shift;

	my $rs =  $c->model( 'User' );
	my $text =  $c->param( 'name' );

	$c->model( 'User' )->create({ name => $text });


	$c->render( text => 'OK' );
}

1;
