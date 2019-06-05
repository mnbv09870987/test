package MyApp::Schema::Result::Answer;

use strict;
use warnings;
use base 'MyApp::Schema::Result';


my $T =  __PACKAGE__;
$T->table( 'answer' );

$T->add_columns(
	id =>  {
		data_type         =>  'integer',
		is_auto_increment =>  1,
	},
	question =>  {
		data_type =>  'integer',
	},
	answer =>  {
		data_type   =>  'integer',
	},
	user_id =>  {
		data_type   =>  'integer',
	},
);

$T->set_primary_key( 'id' );



# require App::Schema::Result::IP;

# my $IP =  'App::Schema::Result::IP';
# $T->belongs_to ( IP     => $IP,  'ip_id' );
# $IP->might_have( Server => $T,   'ip_id' );


1;
