package MyApp::Controller::Calculator;
use Mojo::Base 'Mojolicious::Controller';

# This action will render a template
sub doit {
  my $self = shift;

  my $phone =  $self->param( 'phone' );
  my $name  =  $self->param( 'name' );

  my $x =  $self->param( 'x' );
  my $y =  $self->param( 'y' );
  
  my $result =  $x + $y;

  my $str =  '';
  for my $item ( $x..$y ) {
    $str =  $str . " $item";
    # ''    . ' 5'
    # ' 5'  . ' 6' 
    # ' 5 6'  . ' 7'S
    # ' 5 6 7' . ' 8'
  }

  my @array = ( $x .. $y );
  my $str2 =  '';
  for my $item ( @array ) {
    $str2 =  $str2 . " " .( $item *2 );
  }

  @array = ( 1, 2, 3, 'abc', "some string $x", 77, 'xxxx' );

  my $age =  $self->param( 'age' );
  my $warning;
  if( $age >= 18 ) {
    $warning = 'You are allowed';
  }
  else {
    $warning = 'Access restricted';
  }

  # Render template "example/welcome.html.ep" with message
  $self->render(  text => "Hello, $name. Is your phone really $phone? Suma is: $result; Array: $str; Array2: $str2; Array3: @array; WARNING: $warning" );
}

1;
