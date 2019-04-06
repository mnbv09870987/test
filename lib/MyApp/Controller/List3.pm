package MyApp::Controller::List3;
use Mojo::Base 'Mojolicious::Controller';

# This action will render a template
sub soc3 {
  my $self = shift;

  $self->render( "list3" );
}


1;
