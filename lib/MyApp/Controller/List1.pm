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
  $c->redirect_to( 'stranitsa01', user_id => $u->id );
}

sub soc01 {
 
  my $c = shift;

  my $uid =  $c->param( 'user_id' );
  $c->render( "list1", user_id => $uid );
}

sub answer1 {
  my $c = shift;
  my $input =  $c->param( 'answer' );

  my $uid =  $c->param( 'user_id' );
  my $a =  $c->model( 'Answer' )->create({ 
    answer => $input, 
    question => 1,
    user_id => $uid,

  });
 $c->redirect_to( 'stranitsa02', user_id => $uid );
}

sub soc02 {
 
  my $c = shift;

  my $uid =  $c->param( 'user_id' );
  $c->render( "list2", user_id => $uid );
}

sub answer2 {
  my $c = shift;
  my $input =  $c->param( 'answer' );

  my $uid =  $c->param( 'user_id' );
  my $a =  $c->model( 'Answer' )->create({ 
    answer => $input, 
    question => 2,
    user_id => $uid,

  });
 $c->redirect_to( 'stranitsa03', user_id => $uid );
}

sub soc03 {
  my $c = shift;

  my $uid =  $c->param( 'user_id' );

  $c->render( "list3", user_id => $uid );
}

sub answer3 {
  my $c = shift;
  my $input =  $c->param( 'answer' );

  my $uid =  $c->param( 'user_id' );

  my $u =  $c->model( 'Answer' )->create({ 
    answer => $input, 
    question => 3,
    user_id => $uid,

  });

 $c->redirect_to( 'stranitsa04' ,user_id => $uid );
}

sub soc04 {
  my $c = shift;

  my $uid =  $c->param( 'user_id' );

  $c->render( "list4", user_id => $uid );
}

sub answer4 {
  my $c = shift;
  my $input =  $c->param( 'answer' );

  my $uid =  $c->param( 'user_id' );

  my $u =  $c->model( 'Answer' )->create({ 
    answer => $input, 
    question => 4,
    user_id => $uid,

  });

 $c->redirect_to( 'stranitsa05', user_id => $uid );
}

sub soc05 {
  my $c = shift;

  my $uid =  $c->param( 'user_id' );

  $c->render( "list5", user_id => $uid );
}

sub answer5 {
  my $c = shift;
  my $input =  $c->param( 'answer' );

  my $uid =  $c->param( 'user_id' );

  my $u =  $c->model( 'Answer' )->create({ 
    answer => $input, 
    question => 5,
    user_id => $uid,

  });

 $c->redirect_to( 'stranitsa06', user_id => $uid );
}

sub soc06 {
  my $c = shift;

  my $uid =  $c->param( 'user_id' );

  $c->render( "list6", user_id => $uid );
}

sub answer6 {
  my $c = shift;
  my $input =  $c->param( 'answer' );

  my $uid =  $c->param( 'user_id' );

  my $u =  $c->model( 'Answer' )->create({ 
    answer => $input, 
    question => 6,
    user_id => $uid,

  });

 $c->redirect_to( 'stranitsa07', user_id => $uid );
}

sub soc07 {
  my $c = shift;

  my $uid =  $c->param( 'user_id' );

  $c->render( "list7", user_id => $uid );
}

sub answer7 {
  my $c = shift;
  my $input =  $c->param( 'answer' );

  my $uid =  $c->param( 'user_id' );

  my $u =  $c->model( 'Answer' )->create({ 
    answer => $input, 
    question => 7,
    user_id => $uid,

  });

 $c->redirect_to( 'stranitsa08', user_id => $uid );
}

sub soc08 {
  my $c = shift;

  my $uid =  $c->param( 'user_id' );

  $c->render( "list8", user_id => $uid );
}

sub answer8 {
  my $c = shift;
  my $input =  $c->param( 'answer' );

  my $uid =  $c->param( 'user_id' );

  my $u =  $c->model( 'Answer' )->create({ 
    answer => $input, 
    question => 8,
    user_id => $uid,

  });

 $c->redirect_to( 'stranitsa09', user_id => $uid );
}

sub soc09 {
  my $c = shift;

  my $uid =  $c->param( 'user_id' );

  $c->render( "list9", user_id => $uid );
}

sub answer9 {
  my $c = shift;
  my $input =  $c->param( 'answer' );

  my $uid =  $c->param( 'user_id' );

  my $u =  $c->model( 'Answer' )->create({ 
    answer => $input, 
    question => 9,
    user_id => $uid,

  });

 $c->redirect_to( 'stranitsa10', user_id => $uid );
}

sub soc10 {
  my $c = shift;

  my $uid =  $c->param( 'user_id' );

  $c->render( "list10", user_id => $uid );
}

sub answer10 {
  my $c = shift;
  my $input =  $c->param( 'answer' );

  my $uid =  $c->param( 'user_id' );

  my $u =  $c->model( 'Answer' )->create({ 
    answer => $input, 
    question => 10,
    user_id => $uid,

  });

 $c->redirect_to( 'stranitsa11', user_id => $uid );
}

sub soc11 {
  my $c = shift;

  my $uid =  $c->param( 'user_id' );

  $c->render( "list11", user_id => $uid );
}

sub answer11 {
  my $c = shift;
  my $input =  $c->param( 'answer' );

  my $uid =  $c->param( 'user_id' );

  my $u =  $c->model( 'Answer' )->create({ 
    answer => $input, 
    question => 11,
    user_id => $uid,

  });

 $c->redirect_to( 'stranitsa12', user_id => $uid );
}

sub soc12 {
  my $c = shift;

  my $uid =  $c->param( 'user_id' );

  $c->render( "list12", user_id => $uid );
}

sub answer12 {
  my $c = shift;
  my $input =  $c->param( 'answer' );

  my $uid =  $c->param( 'user_id' );

  my $u =  $c->model( 'Answer' )->create({ 
    answer => $input, 
    question => 12,
    user_id => $uid,

  });

 $c->redirect_to( 'stranitsa13', user_id => $uid );
}

sub soc13 {
  my $c = shift;

  my $uid =  $c->param( 'user_id' );

  $c->render( "list13", user_id => $uid );
}

sub answer13 {
  my $c = shift;
  my $input =  $c->param( 'answer' );

  my $uid =  $c->param( 'user_id' );

  my $u =  $c->model( 'Answer' )->create({ 
    answer => $input, 
    question => 13,
    user_id => $uid,

  });

 $c->redirect_to( 'stranitsa14', user_id => $uid );
}

sub soc14 {
  my $c = shift;

  my $uid =  $c->param( 'user_id' );

  $c->render( "list14", user_id => $uid );
}

sub answer14 {
  my $c = shift;
  my $input =  $c->param( 'answer' );

  my $uid =  $c->param( 'user_id' );

  my $u =  $c->model( 'Answer' )->create({ 
    answer => $input, 
    question => 14,
    user_id => $uid,

  });

 $c->redirect_to( 'stranitsa15', user_id => $uid );
}

sub soc15 {
  my $c = shift;

  my $uid =  $c->param( 'user_id' );

  $c->render( "list15", user_id => $uid );
}

sub answer15 {
  my $c = shift;
  my $input =  $c->param( 'answer' );

  my $uid =  $c->param( 'user_id' );

  my $u =  $c->model( 'Answer' )->create({ 
    answer => $input, 
    question => 15,
    user_id => $uid,

  });

 $c->redirect_to( 'stranitsa16', user_id => $uid );
}

sub soc16 {
  my $c = shift;

  my $uid =  $c->param( 'user_id' );

  $c->render( "list16", user_id => $uid );
}

sub answer16 {
  my $c = shift;
  my $input =  $c->param( 'answer' );

  my $uid =  $c->param( 'user_id' );

  my $u =  $c->model( 'Answer' )->create({ 
    answer => $input, 
    question => 16,
    user_id => $uid,

  });

 $c->redirect_to( 'stranitsa17', user_id => $uid );
}

sub soc17 {
  my $c = shift;

  my $uid =  $c->param( 'user_id' );

  $c->render( "list17", user_id => $uid );
}

sub answer17 {
  my $c = shift;
  my $input =  $c->param( 'answer' );

  my $uid =  $c->param( 'user_id' );

  my $u =  $c->model( 'Answer' )->create({ 
    answer => $input, 
    question => 17,
    user_id => $uid,

  });

 $c->redirect_to( 'stranitsa18', user_id => $uid );
}

sub soc18 {
  my $c = shift;

  my $uid =  $c->param( 'user_id' );

  $c->render( "list18", user_id => $uid );
}

sub answer18 {
  my $c = shift;
  my $input =  $c->param( 'answer' );

  my $uid =  $c->param( 'user_id' );

  my $u =  $c->model( 'Answer' )->create({ 
    answer => $input, 
    question => 18,
    user_id => $uid,

  });

 $c->redirect_to( 'stranitsa19', user_id => $uid );
}

sub soc19 {
  my $c = shift;

  my $uid =  $c->param( 'user_id' );

  $c->render( "list19", user_id => $uid );
}

sub answer19 {
  my $c = shift;
  my $input =  $c->param( 'answer' );

  my $uid =  $c->param( 'user_id' );

  my $u =  $c->model( 'Answer' )->create({ 
    answer => $input, 
    question => 19,
    user_id => $uid,

  });

 $c->redirect_to( 'stranitsa20', user_id => $uid );
}

sub soc20 {
  my $c = shift;

  my $uid =  $c->param( 'user_id' );

  $c->render( "list20", user_id => $uid );
}

sub answer20 {
  my $c = shift;
  my $input =  $c->param( 'answer' );

  my $uid =  $c->param( 'user_id' );

  my $u =  $c->model( 'Answer' )->create({ 
    answer => $input, 
    question => 20,
    user_id => $uid,

  });

 $c->redirect_to( 'stranitsa21', user_id => $uid );
}

sub soc21 {
  my $c = shift;

  my $uid =  $c->param( 'user_id' );

  $c->render( "list21", user_id => $uid );
}

sub answer21 {
  my $c = shift;
  my $input =  $c->param( 'answer' );

  my $uid =  $c->param( 'user_id' );

  my $u =  $c->model( 'Answer' )->create({ 
    answer => $input, 
    question => 21,
    user_id => $uid,

  });

 $c->redirect_to( 'stranitsa22', user_id => $uid );
}

sub soc22 {
  my $c = shift;

  my $uid =  $c->param( 'user_id' );

  $c->render( "list22", user_id => $uid );
}

sub answer22 {
  my $c = shift;
  my $input =  $c->param( 'answer' );

  my $uid =  $c->param( 'user_id' );

  my $u =  $c->model( 'Answer' )->create({ 
    answer => $input, 
    question => 22,
    user_id => $uid,

  });

 $c->redirect_to( 'stranitsa23', user_id => $uid );
}

sub soc23 {
  my $c = shift;

  my $uid =  $c->param( 'user_id' );

  $c->render( "list23", user_id => $uid );
}

sub answer23 {
  my $c = shift;
  my $input =  $c->param( 'answer' );

  my $uid =  $c->param( 'user_id' );

  my $u =  $c->model( 'Answer' )->create({ 
    answer => $input, 
    question => 23,
    user_id => $uid,

  });

 $c->redirect_to( 'stranitsa24', user_id => $uid );
}

sub soc24 {
  my $c = shift;

  my $uid =  $c->param( 'user_id' );

  $c->render( "list24", user_id => $uid );
}

sub answer24 {
  my $c = shift;
  my $input =  $c->param( 'answer' );

  my $uid =  $c->param( 'user_id' );

  my $u =  $c->model( 'Answer' )->create({ 
    answer => $input, 
    question => 24,
    user_id => $uid,

  });

 $c->redirect_to( 'stranitsa25', user_id => $uid );
}

sub soc25 {
  my $c = shift;

  my $uid =  $c->param( 'user_id' );

  $c->render( "list25", user_id => $uid );
}

sub answer25 {
  my $c = shift;
  my $input =  $c->param( 'answer' );

  my $uid =  $c->param( 'user_id' );

  my $u =  $c->model( 'Answer' )->create({ 
    answer => $input, 
    question => 25,
    user_id => $uid,

  });

 $c->redirect_to( 'stranitsa26', user_id => $uid );
}

sub soc26 {
  my $c = shift;

  my $uid =  $c->param( 'user_id' );

  $c->render( "list26", user_id => $uid );
}

sub answer26 {
  my $c = shift;
  my $input =  $c->param( 'answer' );

  my $uid =  $c->param( 'user_id' );

  my $u =  $c->model( 'Answer' )->create({ 
    answer => $input, 
    question => 26,
    user_id => $uid,

  });

 $c->redirect_to( 'stranitsa27', user_id => $uid );
}

sub soc27 {
  my $c = shift;

  my $uid =  $c->param( 'user_id' );

  $c->render( "list27", user_id => $uid );
}

sub answer27 {
  my $c = shift;
  my $input =  $c->param( 'answer' );

  my $uid =  $c->param( 'user_id' );

  my $u =  $c->model( 'Answer' )->create({ 
    answer => $input, 
    question => 27,
    user_id => $uid,

  });

 $c->redirect_to( 'stranitsa28', user_id => $uid );
}

sub soc28 {
  my $c = shift;

  my $uid =  $c->param( 'user_id' );

  $c->render( "list28", user_id => $uid );
}

sub answer28 {
  my $c = shift;
  my $input =  $c->param( 'answer' );

  my $uid =  $c->param( 'user_id' );

  my $u =  $c->model( 'Answer' )->create({ 
    answer => $input, 
    question => 28,
    user_id => $uid,

  });

 $c->redirect_to( 'stranitsa29', user_id => $uid );
}

sub soc29 {
  my $c = shift;

  my $uid =  $c->param( 'user_id' );

  $c->render( "list29", user_id => $uid );
}

sub answer29 {
  my $c = shift;
  my $input =  $c->param( 'answer' );

  my $uid =  $c->param( 'user_id' );

  my $u =  $c->model( 'Answer' )->create({ 
    answer => $input, 
    question => 29,
    user_id => $uid,

  });

 $c->redirect_to( 'stranitsa30', user_id => $uid );
}

sub soc30 {
  my $c = shift;

  my $uid =  $c->param( 'user_id' );

  $c->render( "list30", user_id => $uid );
}

sub answer30 {
  my $c = shift;
  my $input =  $c->param( 'answer' );

  my $uid =  $c->param( 'user_id' );

  my $u =  $c->model( 'Answer' )->create({ 
    answer => $input, 
    question => 30,
    user_id => $uid,

  });

 $c->redirect_to( 'stranitsa31', user_id => $uid );
}

sub soc31 {
  my $c = shift;

  my $uid =  $c->param( 'user_id' );

  $c->render( "list31", user_id => $uid );
}

sub answer31 {
  my $c = shift;
  my $input =  $c->param( 'answer' );

  my $uid =  $c->param( 'user_id' );

  my $u =  $c->model( 'Answer' )->create({ 
    answer => $input, 
    question => 31,
    user_id => $uid,

  });

 $c->redirect_to( 'stranitsa32', user_id => $uid );
}

sub soc32 {
  my $c = shift;

  my $uid =  $c->param( 'user_id' );

  $c->render( "list32", user_id => $uid );
}

sub answer32 {
  my $c = shift;
  my $input =  $c->param( 'answer' );

  my $uid =  $c->param( 'user_id' );

  my $u =  $c->model( 'Answer' )->create({ 
    answer => $input, 
    question => 32,
    user_id => $uid,

  });

 $c->redirect_to( 'stranitsa33', user_id => $uid );
}

sub soc33 {
  my $c = shift;

  my $uid =  $c->param( 'user_id' );

  $c->render( "list33", user_id => $uid );
}

sub answer33 {
  my $c = shift;
  my $input =  $c->param( 'answer' );

  my $uid =  $c->param( 'user_id' );

  my $u =  $c->model( 'Answer' )->create({ 
    answer => $input, 
    question => 33,
    user_id => $uid,

  });

 $c->redirect_to( 'stranitsa34', user_id => $uid );
}

sub soc34 {
  my $c = shift;

  my $uid =  $c->param( 'user_id' );

  $c->render( "list34", user_id => $uid );
}

sub answer34 {
  my $c = shift;
  my $input =  $c->param( 'answer' );

  my $uid =  $c->param( 'user_id' );

  my $u =  $c->model( 'Answer' )->create({ 
    answer => $input, 
    question => 34,
    user_id => $uid,

  });

 $c->redirect_to( 'stranitsa35', user_id => $uid );
}

sub soc35 {
  my $c = shift;

  my $uid =  $c->param( 'user_id' );

  $c->render( "list35", user_id => $uid );
}

sub answer35 {
  my $c = shift;
  my $input =  $c->param( 'answer' );

  my $uid =  $c->param( 'user_id' );

  my $u =  $c->model( 'Answer' )->create({ 
    answer => $input, 
    question => 35,
    user_id => $uid,

  });

 $c->redirect_to( 'stranitsa36', user_id => $uid );
}

sub soc36 {
  my $c = shift;

  my $uid =  $c->param( 'user_id' );

  $c->render( "list36", user_id => $uid );
}

sub answer36 {
  my $c = shift;
  my $input =  $c->param( 'answer' );

  my $uid =  $c->param( 'user_id' );

  my $u =  $c->model( 'Answer' )->create({ 
    answer => $input, 
    question => 36,
    user_id => $uid,

  });

 $c->redirect_to( 'stranitsa37', user_id => $uid );
}

sub soc37 {
  my $c = shift;

  my $uid =  $c->param( 'user_id' );

  $c->render( "list37", user_id => $uid );
}

sub answer37 {
  my $c = shift;
  my $input =  $c->param( 'answer' );

  my $uid =  $c->param( 'user_id' );

  my $u =  $c->model( 'Answer' )->create({ 
    answer => $input, 
    question => 37,
    user_id => $uid,

  });

 $c->redirect_to( 'stranitsa38', user_id => $uid );
}

sub soc38 {
  my $c = shift;

  my $uid =  $c->param( 'user_id' );

  $c->render( "list38", user_id => $uid );
}

sub answer38 {
  my $c = shift;
  my $input =  $c->param( 'answer' );

  my $uid =  $c->param( 'user_id' );

  my $u =  $c->model( 'Answer' )->create({ 
    answer => $input, 
    question => 38,
    user_id => $uid,

  });

 $c->redirect_to( 'stranitsa39', user_id => $uid );
}

sub soc39 {
  my $c = shift;

  my $uid =  $c->param( 'user_id' );

  $c->render( "list39", user_id => $uid );
}

sub answer39 {
  my $c = shift;
  my $input =  $c->param( 'answer' );

  my $uid =  $c->param( 'user_id' );

  my $u =  $c->model( 'Answer' )->create({ 
    answer => $input, 
    question => 39,
    user_id => $uid,

  });

 $c->redirect_to( 'stranitsa40', user_id => $uid );
}

sub soc40 {
  my $c = shift;

  my $uid =  $c->param( 'user_id' );

  $c->render( "list40", user_id => $uid );
}

sub answer40 {
  my $c = shift;
  my $input =  $c->param( 'answer' );

  my $uid =  $c->param( 'user_id' );

  my $u =  $c->model( 'Answer' )->create({ 
    answer => $input, 
    question => 40,
    user_id => $uid,

  });

 $c->redirect_to( 'stranitsa41', user_id => $uid );
}

sub soc41 {
  my $c = shift;

  my $uid =  $c->param( 'user_id' );

  $c->render( "list41", user_id => $uid );
}

sub answer41 {
  my $c = shift;
  my $input =  $c->param( 'answer' );

  my $uid =  $c->param( 'user_id' );

  my $u =  $c->model( 'Answer' )->create({ 
    answer => $input, 
    question => 41,
    user_id => $uid,

  });

 $c->redirect_to( 'stranitsa42', user_id => $uid );
}

sub soc42 {
  my $c = shift;

  my $uid =  $c->param( 'user_id' );

  $c->render( "list42", user_id => $uid );
}

sub answer42 {
  my $c = shift;
  my $input =  $c->param( 'answer' );

  my $uid =  $c->param( 'user_id' );

  my $u =  $c->model( 'Answer' )->create({ 
    answer => $input, 
    question => 42,
    user_id => $uid,

  });

 $c->redirect_to( 'stranitsa43', user_id => $uid );
}

sub soc43 {
  my $c = shift;

  my $uid =  $c->param( 'user_id' );

  $c->render( "list43", user_id => $uid );
}

sub answer43 {
  my $c = shift;
  my $input =  $c->param( 'answer' );

  my $uid =  $c->param( 'user_id' );

  my $u =  $c->model( 'Answer' )->create({ 
    answer => $input, 
    question => 43,
    user_id => $uid,

  });

 $c->redirect_to( 'stranitsa44', user_id => $uid );
}

sub soc44 {
  my $c = shift;

  my $uid =  $c->param( 'user_id' );

  $c->render( "list44", user_id => $uid );
}

sub answer44 {
  my $c = shift;
  my $input =  $c->param( 'answer' );

  my $uid =  $c->param( 'user_id' );

  my $u =  $c->model( 'Answer' )->create({ 
    answer => $input, 
    question => 44,
    user_id => $uid,

  });

 $c->redirect_to( 'stranitsa45', user_id => $uid );
}

sub soc45 {
  my $c = shift;

  my $uid =  $c->param( 'user_id' );

  $c->render( "list45", user_id => $uid );
}

sub answer45 {
  my $c = shift;
  my $input =  $c->param( 'answer' );

  my $uid =  $c->param( 'user_id' );

  my $u =  $c->model( 'Answer' )->create({ 
    answer => $input, 
    question => 45,
    user_id => $uid,

  });

 $c->redirect_to( 'stranitsa46', user_id => $uid );
}

sub soc46 {
  my $c = shift;

  my $uid =  $c->param( 'user_id' );

  $c->render( "list46", user_id => $uid );
}

sub answer46 {
  my $c = shift;
  my $input =  $c->param( 'answer' );

  my $uid =  $c->param( 'user_id' );

  my $u =  $c->model( 'Answer' )->create({ 
    answer => $input, 
    question => 46,
    user_id => $uid,

  });

 $c->redirect_to( 'stranitsa47', user_id => $uid );
}

sub soc47 {
  my $c = shift;

  my $uid =  $c->param( 'user_id' );

  $c->render( "list47", user_id => $uid );
}

sub answer47 {
  my $c = shift;
  my $input =  $c->param( 'answer' );

  my $uid =  $c->param( 'user_id' );

  my $u =  $c->model( 'Answer' )->create({ 
    answer => $input, 
    question => 47,
    user_id => $uid,

  });

 $c->redirect_to( 'stranitsa48', user_id => $uid );
}

sub soc48 {
  my $c = shift;

  my $uid =  $c->param( 'user_id' );

  $c->render( "list48", user_id => $uid );
}

sub answer48 {
  my $c = shift;
  my $input =  $c->param( 'answer' );

  my $uid =  $c->param( 'user_id' );

  my $u =  $c->model( 'Answer' )->create({ 
    answer => $input, 
    question => 48,
    user_id => $uid,

  });

 $c->redirect_to( 'stranitsa49', user_id => $uid );
}

sub soc49 {
  my $c = shift;

  my $uid =  $c->param( 'user_id' );

  $c->render( "list49", user_id => $uid );
}

sub answer49 {
  my $c = shift;
  my $input =  $c->param( 'answer' );

  my $uid =  $c->param( 'user_id' );

  my $u =  $c->model( 'Answer' )->create({ 
    answer => $input, 
    question => 49,
    user_id => $uid,

  });

 $c->redirect_to( 'stranitsa50', user_id => $uid );
}

sub soc50 {
  my $c = shift;

  my $uid =  $c->param( 'user_id' );

  $c->render( "list50", user_id => $uid );
}

sub answer50 {
  my $c = shift;
  my $input =  $c->param( 'answer' );

  my $uid =  $c->param( 'user_id' );

  my $u =  $c->model( 'Answer' )->create({ 
    answer => $input, 
    question => 50,
    user_id => $uid,

  });

 $c->redirect_to( 'stranitsa51', user_id => $uid );
}

sub soc51 {
  my $c = shift;

  my $uid =  $c->param( 'user_id' );

  $c->render( "list51", user_id => $uid );
}

sub answer51 {
  my $c = shift;
  my $input =  $c->param( 'answer' );

  my $uid =  $c->param( 'user_id' );

  my $u =  $c->model( 'Answer' )->create({ 
    answer => $input, 
    question => 51,
    user_id => $uid,

  });

 $c->redirect_to( 'stranitsa52', user_id => $uid );
}

sub soc52 {
  my $c = shift;

  my $uid =  $c->param( 'user_id' );

  $c->render( "list52", user_id => $uid );
}

sub answer52 {
  my $c = shift;
  my $input =  $c->param( 'answer' );

  my $uid =  $c->param( 'user_id' );

  my $u =  $c->model( 'Answer' )->create({ 
    answer => $input, 
    question => 52,
    user_id => $uid,

  });

 $c->redirect_to( 'stranitsa53', user_id => $uid );
}

sub soc53 {
  my $c = shift;

  my $uid =  $c->param( 'user_id' );

  $c->render( "list53", user_id => $uid );
}

sub answer53 {
  my $c = shift;
  my $input =  $c->param( 'answer' );

  my $uid =  $c->param( 'user_id' );

  my $u =  $c->model( 'Answer' )->create({ 
    answer => $input, 
    question => 53,
    user_id => $uid,

  });

 $c->redirect_to( 'stranitsa54', user_id => $uid );
}

sub soc54 {
  my $c = shift;

  my $uid =  $c->param( 'user_id' );

  $c->render( "list54", user_id => $uid );
}

sub answer54 {
  my $c = shift;
  my $input =  $c->param( 'answer' );

  my $uid =  $c->param( 'user_id' );

  my $u =  $c->model( 'Answer' )->create({ 
    answer => $input, 
    question => 54,
    user_id => $uid,

  });

 $c->redirect_to( 'stranitsa55', user_id => $uid );
}

sub soc55 {
  my $c = shift;

  my $uid =  $c->param( 'user_id' );

  $c->render( "list55", user_id => $uid );
}

sub answer55 {
  my $c = shift;
  my $input =  $c->param( 'answer' );

  my $uid =  $c->param( 'user_id' );

  my $u =  $c->model( 'Answer' )->create({ 
    answer => $input, 
    question => 55,
    user_id => $uid,

  });

 $c->redirect_to( 'stranitsa56', user_id => $uid );
}

sub soc56 {
  my $c = shift;

  my $uid =  $c->param( 'user_id' );

  $c->render( "list56", user_id => $uid );
}

sub answer56 {
  my $c = shift;
  my $input =  $c->param( 'answer' );

  my $uid =  $c->param( 'user_id' );

  my $u =  $c->model( 'Answer' )->create({ 
    answer => $input, 
    question => 56,
    user_id => $uid,

  });

 $c->redirect_to( 'stranitsa57', user_id => $uid );
}

sub soc57 {
  my $c = shift;

  my $uid =  $c->param( 'user_id' );

  $c->render( "list57", user_id => $uid );
}

sub answer57 {
  my $c = shift;
  my $input =  $c->param( 'answer' );

  my $uid =  $c->param( 'user_id' );

  my $u =  $c->model( 'Answer' )->create({ 
    answer => $input, 
    question => 57,
    user_id => $uid,

  });

 $c->redirect_to( 'stranitsa58', user_id => $uid );
}

sub soc58 {
  my $c = shift;

  my $uid =  $c->param( 'user_id' );

  $c->render( "list58", user_id => $uid );
}

sub answer58 {
  my $c = shift;
  my $input =  $c->param( 'answer' );

  my $uid =  $c->param( 'user_id' );

  my $u =  $c->model( 'Answer' )->create({ 
    answer => $input, 
    question => 58,
    user_id => $uid,

  });

 $c->redirect_to( 'stranitsa59', user_id => $uid );
}

sub soc59 {
  my $c = shift;

  my $uid =  $c->param( 'user_id' );

  $c->render( "list59", user_id => $uid );
}

sub answer59 {
  my $c = shift;
  my $input =  $c->param( 'answer' );

  my $uid =  $c->param( 'user_id' );

  my $u =  $c->model( 'Answer' )->create({ 
    answer => $input, 
    question => 59,
    user_id => $uid,

  });

 $c->redirect_to( 'stranitsa60', user_id => $uid );
}

sub soc60 {
  my $c = shift;

  my $uid =  $c->param( 'user_id' );

  $c->render( "list60", user_id => $uid );
}

sub answer60 {
  my $c = shift;
  my $input =  $c->param( 'answer' );

  my $uid =  $c->param( 'user_id' );

  my $u =  $c->model( 'Answer' )->create({ 
    answer => $input, 
    question => 60,
    user_id => $uid,

  });

 $c->redirect_to( 'stranitsa61', user_id => $uid );
}

sub soc61 {
  my $c = shift;

  my $uid =  $c->param( 'user_id' );

  $c->render( "list61", user_id => $uid );
}

sub answer61 {
  my $c = shift;
  my $input =  $c->param( 'answer' );

  my $uid =  $c->param( 'user_id' );

  my $u =  $c->model( 'Answer' )->create({ 
    answer => $input, 
    question => 61,
    user_id => $uid,

  });

 $c->redirect_to( 'stranitsa62', user_id => $uid );
}

sub soc62 {
  my $c = shift;

  my $uid =  $c->param( 'user_id' );

  $c->render( "list62", user_id => $uid );
}

sub answer62 {
  my $c = shift;
  my $input =  $c->param( 'answer' );

  my $uid =  $c->param( 'user_id' );

  my $u =  $c->model( 'Answer' )->create({ 
    answer => $input, 
    question => 62,
    user_id => $uid,

  });

 $c->redirect_to( 'stranitsa63', user_id => $uid );
}

sub soc63 {
  my $c = shift;

  my $uid =  $c->param( 'user_id' );

  $c->render( "list63", user_id => $uid );
}

sub answer63 {
  my $c = shift;
  my $input =  $c->param( 'answer' );

  my $uid =  $c->param( 'user_id' );

  my $u =  $c->model( 'Answer' )->create({ 
    answer => $input, 
    question => 63,
    user_id => $uid,

  });

 $c->redirect_to( 'stranitsa64', user_id => $uid );
}

sub soc64 {
  my $c = shift;

  my $uid =  $c->param( 'user_id' );

  $c->render( "list64", user_id => $uid );
}

sub answer64 {
  my $c = shift;
  my $input =  $c->param( 'answer' );

  my $uid =  $c->param( 'user_id' );

  my $u =  $c->model( 'Answer' )->create({ 
    answer => $input, 
    question => 64,
    user_id => $uid,

  });

 $c->redirect_to( 'stranitsa65', user_id => $uid );
}

sub soc65 {
  my $c = shift;

  my $uid =  $c->param( 'user_id' );

  $c->render( "list65", user_id => $uid );
}

sub answer65 {
  my $c = shift;
  my $input =  $c->param( 'answer' );

  my $uid =  $c->param( 'user_id' );

  my $u =  $c->model( 'Answer' )->create({ 
    answer => $input, 
    question => 65,
    user_id => $uid,

  });

 $c->redirect_to( 'stranitsa66', user_id => $uid );
}

sub soc66 {
  my $c = shift;

  my $uid =  $c->param( 'user_id' );

  $c->render( "list66", user_id => $uid );
}

sub answer66 {
  my $c = shift;
  my $input =  $c->param( 'answer' );

  my $uid =  $c->param( 'user_id' );

  my $u =  $c->model( 'Answer' )->create({ 
    answer => $input, 
    question => 66,
    user_id => $uid,

  });

 $c->redirect_to( 'stranitsa67', user_id => $uid );
}

sub soc67 {
  my $c = shift;

  my $uid =  $c->param( 'user_id' );

  $c->render( "list67", user_id => $uid );
}

sub answer67 {
  my $c = shift;
  my $input =  $c->param( 'answer' );

  my $uid =  $c->param( 'user_id' );

  my $u =  $c->model( 'Answer' )->create({ 
    answer => $input, 
    question => 67,
    user_id => $uid,

  });

 $c->redirect_to( 'stranitsa68', user_id => $uid );
}

sub soc68 {
  my $c = shift;

  my $uid =  $c->param( 'user_id' );

  $c->render( "list68", user_id => $uid );
}

sub answer68 {
  my $c = shift;
  my $input =  $c->param( 'answer' );

  my $uid =  $c->param( 'user_id' );

  my $u =  $c->model( 'Answer' )->create({ 
    answer => $input, 
    question => 68,
    user_id => $uid,

  });

 $c->redirect_to( 'stranitsa69', user_id => $uid );
}

sub soc69 {
  my $c = shift;

  my $uid =  $c->param( 'user_id' );

  $c->render( "list69", user_id => $uid );
}

sub answer69 {
  my $c = shift;
  my $input =  $c->param( 'answer' );

  my $uid =  $c->param( 'user_id' );

  my $u =  $c->model( 'Answer' )->create({ 
    answer => $input, 
    question => 69,
    user_id => $uid,

  });

 $c->redirect_to( 'stranitsa70', user_id => $uid );
}

sub soc70 {
  my $c = shift;

  my $uid =  $c->param( 'user_id' );

  $c->render( "list70", user_id => $uid );
}

sub answer70 {
  my $c = shift;
  my $input =  $c->param( 'answer' );

  my $uid =  $c->param( 'user_id' );

  my $u =  $c->model( 'Answer' )->create({ 
    answer => $input, 
    question => 70,
    user_id => $uid,

  });

 $c->redirect_to( 'stranitsa71', user_id => $uid );
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

  $c->render( "list71", kol => $otvety, name => $u->name );

}


1;
