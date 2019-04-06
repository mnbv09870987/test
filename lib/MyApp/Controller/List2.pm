package MyApp::Controller::List2;
use Mojo::Base 'Mojolicious::Controller';

# This action will render a template
sub soc2 {
  my $self = shift;

  $self->render( "list2" );
}


1;
