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

  $self->defaults( layout => 'one' );

  my $r = $self->routes;

  $r->get('/')->to('list1#novoe');
  $r->get('/start')->to('list1#novoe') -> name( 'start' );
  $r->post('/start')->to('list1#vvod_dannyh');

  $r->get('/page')->to('list1#programma') -> name( 'stranitsa' );
  $r->post('/page')->to('list1#answer');

  $r->get('/results')->to('list1#proverka_otvetov') -> name( 'finish' );

  $r->get('/out')->to('list1#vyvod_rezultatov') -> name( 'out' );

  $r->get('/student/:id/view')->to('list1#view') -> name( 'view' );

  $r->get('/student/:id/delete')->to('list1#delete') -> name( 'delete' );

  $r->get( '/:table/'        )->to( 'table#list'        )->name( 'list' );
  $r->get( '/:table/create'  )->to( 'table#create_get'  )->name( 'create_form' );
  $r->post( '/:table/create' )->to( 'table#create_post' )->name( 'create_data' );

  $r->get( '/:table/:id/edit_form'  )->to( 'table#edit_get'  )
  ->name( 'edit_form' );
  $r->post( '/:table/:id/edit' )->to( 'table#edit_post' )
  ->name( 'edit_data' );

  $r->get( '/:table/:id/view'   )->to( 'table#view'   )->name( 'view_row'   );
  $r->get( '/:table/:id/delete' )->to( 'table#delete' )->name( 'delete_row' );
  warn "start\n";

}

1;

