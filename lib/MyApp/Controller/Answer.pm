package MyApp::Controller::Answer;
use Mojo::Base 'Mojolicious::Controller::Table';


sub results {
  my $self = shift;

  $self->render( text => 'OK' );
}


1;
