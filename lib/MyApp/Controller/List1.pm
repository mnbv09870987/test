package MyApp::Controller::List1;
use Mojo::Base 'Mojolicious::Controller';

# This action will render a template

use strict;
use warnings;

sub soc00 {
  my $c = shift;

  $c->render( "list0" );
}

sub vvod_dannyh {
  my $c = shift;
  my $input =  $c->param( 'answer' );
  my $input1 =  $c->param( 'answer1' );
  my $u =  $c->model( 'User' )->create({ name => $input, age => $input1 });
  $c->redirect_to( 'stranitsa', user_id => $u->id, num => 1 );
}


sub soc {
  my $c = shift;

  my $uid =  $c->param( 'user_id' );
  my $num =  $c->param( 'num' );

  $c->render( "list", user_id => $uid, number => $num );
}

sub answer {
  my $c = shift;
  my $input =  $c->param( 'answer' );

  my $uid =  $c->param( 'user_id' );
  my $num =  $c->param( 'num' );
  my $a =  $c->model( 'Answer' )->create({ 
    answer => $input, 
    question => $num,
    user_id => $uid,
  });

  if ( $num == 70 ) {
    # $c->redirect_to( "/results/$uid" );
    # $c->redirect_to( "/results/" .$uid);
    $c->redirect_to( "finish", user_id => $uid );
  }
  else {
    $c->redirect_to( 'stranitsa', user_id => $uid, num => $num+1 );
  }
}

sub proverka_otvetov {
  my $c = shift;
  my $uid =  $c->param( 'user_id' );

  my @a =  $c->model( 'Answer' )->search({ user_id => $uid })->all;

  my $u =  $c->model( 'User' )->search({ id => $uid })->first;

  my $otvety = 0;
  my %hash1 = ( 1 => 2, 2 => 2, 3 => 1, 4 => 3, 5 => 2,
                6 => 2, 7 => 3, 8 => 3, 9 => 2, 10 => 3,
                11 => 2, 12 => 2, 13 => 2, 14 => 3, 15 => 2,
                16 => 2, 17 => 2, 18 => 3, 19 => 2, 20 => 3,
                21 => 2, 22 => 1, 23 => 3, 24 => 3, 25 => 2,
                26 => 2, 27 => 1, 28 => 3, 29 => 2, 30 => 1,
                31 => 3, 32 => 2, 33 => 1, 34 => 3, 35 => 1,
                36 => 3, 37 => 2, 38 => 3, 39 => 1, 40 => 2,
                41 => 1, 42 => 2, 43 => 2, 44 => 1, 45 => 3,
                46 => 1, 47 => 1, 48 => 1, 49 => 2, 50 => 3,
                51 => 2, 52 => 1, 53 => 2, 54 => 1, 55 => 1,
                56 => 2, 57 => 1, 58 => 2, 59 => 2, 60 => 1,
                61 => 2, 62 => 1, 63 => 3, 64 => 2, 65 => 1,
                66 => 2, 67 => 3, 68 => 1, 69 => 2, 70 => 1,
              );
  my %hash2 = ();
 
  for my $cycle  ( @a ) {
    $hash2{$cycle->question} = $cycle->answer;
  }

  for my $cycle ( keys %hash1 ) {
    unless ( exists $hash2{$cycle} ) {
     next;
    }

    if ( $hash1{$cycle} eq $hash2{$cycle} ) {
      $otvety = $otvety +1;
    }
  }

  $c->render( "results", kol => $otvety, name => $u->name );

}


1;
