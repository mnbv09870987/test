package MyApp;
use Mojo::Base 'Mojolicious';

use MyApp::Helper;

use warnings;
use strict;

# This method will run once at server start
sub startup {
  my $self = shift;

  unshift @{ $self->commands->namespaces }, 'MyApp::Command';

  # Load configuration from hash returned by "my_app.conf"
  my $config = $self->plugin('Config', {file => 'etc/my_app.conf'});

  # Documentation browser under "/perldoc"
  $self->plugin('PODRenderer') if $config->{perldoc};

  MyApp::Helper::add_helpers( $self );


  my $r = $self->routes;
  $r->get('/start')->to('list1#novoe') -> name( 'start' );
  $r->post('/start')->to('list1#vvod_dannyh');

  $r->get('/page')->to('list1#programma') -> name( 'stranitsa' );
  $r->post('/page')->to('list1#answer');

  $r->get('/results')->to('list1#proverka_otvetov') -> name( 'finish' );

  $r->get('/out')->to('list1#vyvod_rezultatov');

}

1;

