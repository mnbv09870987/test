
# TODO: rename
package MyApp::Controller::Bennet;
use Mojo::Base 'Mojolicious::Controller';

# This action will render a template

use strict;
use warnings;

# use parent 'MyApp::Controller::User';


sub registration_get {   
  my $c = shift;

  $c->render( "registration_list" );
}


sub registration_post {
  my( $c ) =  @_;

  my $name  =  $c->param( 'name' );
  my $age =  $c->param( 'age' );

  if( !$name || !$age ) {
    $c->redirect_to ( 'registration' );
    return;
  }


  my $u =  $c->model( 'User' )->create({ name => $name, age => $age });
  $c->cookie( user_id        => $u->id );
  $c->cookie( time           => time   );
  $c->cookie( time_answer    => time   );

  $c->redirect_to ( 'nq' );
}


# use DBIx::Class::Report;
# my $qrNextQuestion = <<SQL;
# select * from answer where user_id = 0 and question <= 10 and question not in ( 
#   select question from answer where user_id = ? and answer >= 0
# ) limit 1
# SQL

use DBIx::Class::Report;
my $qrNextQuestion = <<SQL;
select * from answer where user_id = 0 and question not in ( 
  select question from answer where user_id = ? and answer >= 0
) limit 1
SQL


sub next_question {
  my $c =  shift;

  my $dsAnswer;
  my $uid =  $c->cookie( 'user_id' );
  if( !$uid ) {
    $c->redirect_to( 'registration' );
    return;
  }

  my $no_time =  (time - $c->cookie( 'time' )) > 1500;
  if( $no_time ) {
    $dsAnswer =  $c->model( 'Answer' )->search({ user_id => $uid, answer => 0 });
    $dsAnswer->update ({ answer => -1 });

    $c->redirect_to( "finish" );
    return;
  }
  
  my $report = DBIx::Class::Report->new(
    schema  => $c->db,
    sql     => $qrNextQuestion,
    columns => [qw/ id question answer user_id /],
  );

  my $rs =  $report->fetch( $uid );
 
  if( !$rs->count ) {
    $dsAnswer =  $c->model( 'Answer' )->search({ user_id => $uid, answer => 0 });
    $dsAnswer->update ({ answer => -1 });

    $rs =  $report->fetch( $uid );
  }

  if( !$rs->count ) {
    $c->redirect_to( "finish" );
    return;
  }

  my $nextQuestion =  $rs->first;
  $c->cookie( num => $nextQuestion->question );
  
  $c->render( "ask_question", user_id => $uid, number => $nextQuestion->question );
}


sub saving_answers {
  my( $c ) =  @_;

  my $uid =  $c->cookie( 'user_id' );
  if( !$uid ) {
    $c->redirect_to( 'registration' );
    return;
  }

  my $input =  $c->param( 'answer' );
  my $time_answer = time - $c->cookie( 'time_answer' );

  if ( !defined $input ) {
    $c->redirect_to( 'nq' );
    return;
  }

  my $num =  $c->cookie( 'num' );
  my $miss_que = $c->model( 'Answer' )->search({
    user_id => $uid,
    question => $num,
    }) -> first;

  if ( $miss_que ) {
    $miss_que -> update ({
      answer => $input,
      time => ($miss_que -> time) + $time_answer,
      });
  }
    else {
      my $a =  $c->model( 'Answer' )->create({
        answer   => $input,
        question => $num,
        user_id  => $uid,
        time     => $time_answer,
      });
    }

  $c->cookie( time_answer    => time );

  $c->redirect_to( 'nq' );
}



sub show_results {
  my( $c ) =  @_;
  
  my $uid =  $c->cookie( 'user_id' )   or do{
      $c->redirect_to( 'registration' );
      return;    
  };


  $c->cookie( user_id => undef );

  my $u =  $c->model( 'User' )->search({ id => $uid })->first;

  my( $kol, $size ) = $c->total_calc( $u->id );

  $c->render( "results", kol => $kol, name => $u->name );

}


sub output_results {

    my( $c ) =  @_;

    my @user =  $c->model( 'User' )->all;
    my @otvety = ();
      
    for my $u ( @user ) {
        my %otv = ();

        my @answer =  $c->model( 'Answer' )->search({
            user_id   => $u->id,
            }) -> all;
# DB::x;
        my $time_total;
        for my $t ( @answer ) {
            $time_total = $time_total + ( $t -> time );
        }
        my $min_total = int ( $time_total / 60 );
        my $sec_total = int ((( $time_total / 60 ) - $min_total) * 60);

       
        my( $kol, $size ) = $c->total_calc( $u->id );
        $otv{ name }   = $u->name;
        $otv{ age }    = $u->age;
        $otv{ otvety } = $kol;
        $otv{ size }   = $size;
        $otv{ id }     = $u->id;
        $otv{ min_total }     = $min_total;
        $otv{ sec_total }     = $sec_total;
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

1;
