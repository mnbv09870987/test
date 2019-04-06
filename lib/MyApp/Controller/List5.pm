package MyApp::Controller::List5;
use Mojo::Base 'Mojolicious::Controller';

# This action will render a template
sub soc5 {
  my $self = shift;

  $self->render( "list5" );
}


1;
