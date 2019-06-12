package MyApp::Schema::Result::RegistrationDD;

use strict;
use warnings;
use base 'MyApp::Schema::Result';


my $T =  __PACKAGE__;
$T->table( 'registrationdd' );

$T->add_columns(
	id =>  {
		data_type         =>  'integer',
		is_auto_increment =>  1,
	},
	e_mail =>  {
		data_type =>  'text',
	},
	parol =>  {
		data_type   =>  'integer',
	},
	data =>  {
		data_type   =>  'integer',
		is_nullable =>  1,
	},
);

$T->set_primary_key( 'id' );

1;
