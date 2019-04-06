package MyApp::Controller::Form1;
use Mojo::Base 'Mojolicious::Controller';

# This action will render a template
sub soccer {
  my $self = shift;

  $self->render( "form1" );
}

sub soccer1 {
	my $self = shift;

	my $input =  $self->param( 'answer' );

	$self->render( text => "Your input is: " .$input );
}

1;
