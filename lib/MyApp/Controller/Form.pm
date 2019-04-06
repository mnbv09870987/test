package MyApp::Controller::Form;
use Mojo::Base 'Mojolicious::Controller';

# This action will render a template
sub show {
  my $self = shift;

  $self->render( "form" );
}

sub user_input {
	my $self = shift;

	my $input =  $self->param( 'answer' );

	$self->render( text => "Your input is: " .$input );
}

1;
