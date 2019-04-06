package MyApp::Controller::Massiv;
use Mojo::Base 'Mojolicious::Controller';

# This action will render a template
sub doit { 
  my $self = shift;

  my @arr =  ( 'a', 'b', 'c', 'd' );
  my $first  =  shift @arr;  # 'a'    ('b', 'c', 'd')
  my $second =  shift @arr;  # 'b'    (c d)
  my $third  =  shift @arr;  # 'c'    (d)
  my $forth  =  shift @arr;  # 'd'    ()

  
  my $x =  $self->param( 'x' );
  my $y =  $self->param( 'y' );


  my @array = ( $x + $y );
  my $str =  '';
  for my $item ( @array ) {
    $str =  $str . ' ' .( $item *2 );
  }

  # $str =  ' ' .'М'; # ' M'
  # $str =  ' М';     # ' M'

  my @array = (' Матч прошедший в субботу на стадионе Пинатар Арена<br>  
  	завершилась со счетом один один. В составе ЦСКА голом отметился Абель Эрнандес<br>
  	у сорок отличился экс-форвард казанского Рубина<br>
  	и санкт-петербургского Зенита Соломон Рондон');

  my $tel =  $self->param( 'tel' );
  my $telefon;
  if( $tel >= 18 ) {
    $telefon = 'Киевстар 097';
  }
  else {
    $telefon = 'МТС 095';
  }

  # Render template "example/welcome.html.ep" with message
  $self->render(  text => "Array: $str; Array2: @array; ТЕЛЕФОН: $telefon" );
}

1;
