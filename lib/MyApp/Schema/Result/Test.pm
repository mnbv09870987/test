package MyApp::Schema::Result::Test;

use strict;
use warnings;
use base 'MyApp::Schema::Result';


my $T =  __PACKAGE__;
$T->table( 'test' );

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


1;
