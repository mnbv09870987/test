package MyApp::Controller::Abetka;
use Mojo::Base 'Mojolicious::Controller';

# This action will render a template
sub dock {
  my $self = shift;

  my $phone =  $self->param( 'phone' );
  my $name  =  $self->param( 'name' );

  my $x =  $self->param( 'x' );
  my $y =  $self->param( 'y' );
  
  my $result =  $x + $y;

  

  # Render template "example/welcome.html.ep" with message
  $self->render(  text => "Hello, $name. Is your phone really $phone Kiyvstar          азбука gert              Suma is: $result" );
}			

1;
