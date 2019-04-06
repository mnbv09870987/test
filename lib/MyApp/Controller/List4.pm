package MyApp::Controller::List4;
use Mojo::Base 'Mojolicious::Controller';

# This action will render a template
sub soc4 {
  my $self = shift;

  $self->render( "list4" );
}


1;
