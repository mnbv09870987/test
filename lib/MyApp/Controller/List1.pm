
package MyApp::Controller::List1;
use Mojo::Base 'Mojolicious::Controller';

# This action will render a template

use strict;
use warnings;

# use parent 'MyApp::Controller::User';

sub novoe {
  my $c = shift;

  $c->render( "start_list" );
}

sub vvod_dannyh {
  my( $c ) =  @_;
  my $input  =  $c->param( 'answer' );
  my $input1 =  $c->param( 'answer1' );

  if (  !$input || !$input1 ) {
    $c->redirect_to ( 'start' );
    return;
  }

  my $u =  $c->model( 'User' )->create({ name => $input, age => $input1 });
  my $time = time;
  $c->cookie( user_id => $u->id );
  $c->cookie( num => 1 );
  $c->cookie( time => $time );
  $c->redirect_to ( 'stranitsa' );
}


sub programma {
  my( $c ) =  @_;

  my $uid =  $c->cookie( 'user_id' );
  my $num =  $c->cookie( 'num' );

  $c->render( "list", user_id => $uid, number => $num );
}

sub answer {
  my( $c ) =  @_;

  my $input =  $c->param( 'answer' );
  if ( !defined $input ) {
    $c->redirect_to( 'stranitsa' );
    return;
  }


  my $uid =  $c->cookie( 'user_id' );
    if ( $uid == ' ' ) {

      $c->redirect_to( 'start' );
      return;
    }
  my $num =  $c->cookie( 'num' );
  my $a =  $c->model( 'Answer' )->create({ 
    answer => $input, 
    question => $num,
    user_id => $uid,
  });


  my $no_time       =  (time - $c->cookie( 'time' )) > 1500;
  my $last_question =  $num >= 70;
  if( $no_time  ||  $last_question ) {
    $c->redirect_to( "finish" );
  }
  else {
    $c->cookie( num => $num+1 );
    $c->redirect_to( 'stranitsa' );
  }
}


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


  sub _total_calc {
    my( $c, $uid ) =  @_;

    my @a =  $c->model( 'Answer' )->search({ user_id => $uid })->all;
    my $size = @a;
    my $kol = 0;
    for my $a ( @a ) {
       if( $hash1{ $a->question } == $a->answer ) {
        $kol++;
      }

    }

    return ($kol, $size, $uid);
  }


sub proverka_otvetov {
  my( $c ) =  @_;
  my $uid =  $c->cookie( 'user_id' );

  my $u =  $c->model( 'User' )->search({ id => $uid })->first;
  my ($kol, $size, $uid) =  _total_calc( $c, $uid );

  $c->cookie( user_id => undef );

  $c->render( "results", kol => $kol, name => $u->name );

}


sub vyvod_rezultatov {

    my( $c ) =  @_;

    my @user =  $c->model( 'User' )->all;
    my @otvety = ();
      
    for my $i (@user) {
        my %otv = ();
        my ($kol, $size, $uid) = _total_calc( $c, $i->id );
        $otv{ name } = $i->name;
        $otv{ age } = $i->age;
        $otv{ otvety } = $kol;
        $otv{ size } = $size;
        $otv{ id } = $uid;
        push (@otvety, \%otv);
    }

    @otvety = sort { $a->{ name } cmp $b->{ name } } @otvety;

    $c->render( "vyvod", answer => \@otvety  );

}


sub view {

    my( $c ) =  @_;
    my $id =  $c->param( 'id' );

    $c->render( "pokazat", id => $id  );

}


sub delete {

    my( $c ) =  @_;
    my $id =  $c->param( 'id' );

    my $user =  $c->model( 'User' )->search({
      id   => $id,
    })->first;
    $user->delete;

    my $dsAnswer =  $c->model( 'Answer' )->search({
       user_id   => $id,
    });
    $dsAnswer->delete;

    $c->redirect_to ( 'out' );

}


















# sub vyvod_rezultatov {

#     my( $c ) =  @_;

#     my @user =  $c->model( 'User' )
#       # ->search({},{ order_by => 'name' })
#       ->all;
#     my @otvety = ();

#     for my $i (@user) {
#         my %otv = ();
#         my ($kol, $size, $uid) = _total_calc( $c, $i->id );
#         $otv{ name } = $i->name;
#         $otv{ otvety } = $kol;
#         $otv{ size } = $size;
#         $otv{ id } = $uid;
#         push (@otvety, \%otv);
#     }

#     @otvety = sort { $a->{ name } cmp $b->{ name } } @otvety;

#     $c->render( "vyvod", answer => \@otvety  );

# }


# sub pokazat {

#     my( $c ) =  @_;
#     my $id =  $c->param( 'id' );

#     $c->render( "pokazat", id => $id  );

# }




1;
