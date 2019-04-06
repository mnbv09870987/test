package MyApp::Controller::Form2;
use Mojo::Base 'Mojolicious::Controller';

# This action will render a template
sub soccer {
  my $self = shift;

  $self->render( "form2" );
}


1;
