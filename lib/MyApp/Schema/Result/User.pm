package MyApp::Schema::Result::User;

use strict;
use warnings;
use base 'MyApp::Schema::Result';


my $T =  __PACKAGE__;
$T->table( 'user' );

$T->add_columns(
	id =>  {
		data_type         =>  'integer',
		is_auto_increment =>  1,
	},
	name =>  {
		data_type =>  'text',
		size      =>  128,
	},
);

$T->set_primary_key( 'id' );
$T->add_unique_constraint([ 'name' ]);



# require App::Schema::Result::IP;

# my $IP =  'App::Schema::Result::IP';
# $T->belongs_to ( IP     => $IP,  'ip_id' );
# $IP->might_have( Server => $T,   'ip_id' );


1;
