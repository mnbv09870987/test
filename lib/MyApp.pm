package MyApp;
use Mojo::Base 'Mojolicious';

use MyApp::Helper;

# This method will run once at server start
sub startup {
  my $self = shift;

  unshift @{ $self->commands->namespaces }, 'MyApp::Command';

  # Load configuration from hash returned by "my_app.conf"
  my $config = $self->plugin('Config', {file => 'etc/my_app.conf'});

  # Documentation browser under "/perldoc"
  $self->plugin('PODRenderer') if $config->{perldoc};

  MyApp::Helper::add_helpers( $self );


  my $r = $self->routes;
  $r->get('/page00')->to('list1#soc00');
  $r->post('/page00')->to('list1#vvod_dannyh');
  $r->get('/page01/<user_id:num>')->to('list1#soc01') -> name( 'stranitsa01' );
  $r->post('/page01/<user_id:num>')->to('list1#answer1');
  $r->get('/page02/<user_id:num>')->to('list1#soc02') -> name( 'stranitsa02' );
  $r->post('/page02/<user_id:num>')->to('list1#answer2');
  $r->get('/page03/<user_id:num>')->to('list1#soc03') -> name( 'stranitsa03' );
  $r->post('/page03/<user_id:num>')->to('list1#answer3');
  $r->get('/page04/<user_id:num>')->to('list1#soc04') -> name( 'stranitsa04' );
  $r->post('/page04/<user_id:num>')->to('list1#answer4');
  $r->get('/page05/<user_id:num>')->to('list1#soc05') -> name( 'stranitsa05' );
  $r->post('/page05/<user_id:num>')->to('list1#answer5');
  $r->get('/page06/<user_id:num>')->to('list1#soc06') -> name( 'stranitsa06' );
  $r->post('/page06/<user_id:num>')->to('list1#answer6');
  $r->get('/page07/<user_id:num>')->to('list1#soc07') -> name( 'stranitsa07' );
  $r->post('/page07/<user_id:num>')->to('list1#answer7');
  $r->get('/page08/<user_id:num>')->to('list1#soc08') -> name( 'stranitsa08' );
  $r->post('/page08/<user_id:num>')->to('list1#answer8');
  $r->get('/page09/<user_id:num>')->to('list1#soc09') -> name( 'stranitsa09' );
  $r->post('/page09/<user_id:num>')->to('list1#answer9');
  $r->get('/page10/<user_id:num>')->to('list1#soc10') -> name( 'stranitsa10' );
  $r->post('/page10/<user_id:num>')->to('list1#answer10');
  $r->get('/page11/<user_id:num>')->to('list1#soc11') -> name( 'stranitsa11' );
  $r->post('/page11/<user_id:num>')->to('list1#answer11');
  $r->get('/page12/<user_id:num>')->to('list1#soc12') -> name( 'stranitsa12' );
  $r->post('/page12/<user_id:num>')->to('list1#answer12');
  $r->get('/page13/<user_id:num>')->to('list1#soc13') -> name( 'stranitsa13' );
  $r->post('/page13/<user_id:num>')->to('list1#answer13');
  $r->get('/page14/<user_id:num>')->to('list1#soc14') -> name( 'stranitsa14' );
  $r->post('/page14/<user_id:num>')->to('list1#answer14');
  $r->get('/page15/<user_id:num>')->to('list1#soc15') -> name( 'stranitsa15' );
  $r->post('/page15/<user_id:num>')->to('list1#answer15');
  $r->get('/page16/<user_id:num>')->to('list1#soc16') -> name( 'stranitsa16' );
  $r->post('/page16/<user_id:num>')->to('list1#answer16');
  $r->get('/page17/<user_id:num>')->to('list1#soc17') -> name( 'stranitsa17' );
  $r->post('/page17/<user_id:num>')->to('list1#answer17');
  $r->get('/page18/<user_id:num>')->to('list1#soc18') -> name( 'stranitsa18' );
  $r->post('/page18/<user_id:num>')->to('list1#answer18');
  $r->get('/page19/<user_id:num>')->to('list1#soc19') -> name( 'stranitsa19' );
  $r->post('/page19/<user_id:num>')->to('list1#answer19');
  $r->get('/page20/<user_id:num>')->to('list1#soc20') -> name( 'stranitsa20' );
  $r->post('/page20/<user_id:num>')->to('list1#answer20');
  $r->get('/page21/<user_id:num>')->to('list1#soc21') -> name( 'stranitsa21' );
  $r->post('/page21/<user_id:num>')->to('list1#answer21');
  $r->get('/page22/<user_id:num>')->to('list1#soc22') -> name( 'stranitsa22' );
  $r->post('/page22/<user_id:num>')->to('list1#answer22');
  $r->get('/page23/<user_id:num>')->to('list1#soc23') -> name( 'stranitsa23' );
  $r->post('/page23/<user_id:num>')->to('list1#answer23');
  $r->get('/page24/<user_id:num>')->to('list1#soc24') -> name( 'stranitsa24' );
  $r->post('/page24/<user_id:num>')->to('list1#answer24');
  $r->get('/page25/<user_id:num>')->to('list1#soc25') -> name( 'stranitsa25' );
  $r->post('/page25/<user_id:num>')->to('list1#answer25');
  $r->get('/page26/<user_id:num>')->to('list1#soc26') -> name( 'stranitsa26' );
  $r->post('/page26/<user_id:num>')->to('list1#answer26');
  $r->get('/page27/<user_id:num>')->to('list1#soc27') -> name( 'stranitsa27' );
  $r->post('/page27/<user_id:num>')->to('list1#answer27');
  $r->get('/page28/<user_id:num>')->to('list1#soc28') -> name( 'stranitsa28' );
  $r->post('/page28/<user_id:num>')->to('list1#answer28');
  $r->get('/page29/<user_id:num>')->to('list1#soc29') -> name( 'stranitsa29' );
  $r->post('/page29/<user_id:num>')->to('list1#answer29');
  $r->get('/page30/<user_id:num>')->to('list1#soc30') -> name( 'stranitsa30' );
  $r->post('/page30/<user_id:num>')->to('list1#answer30');
  $r->get('/page31/<user_id:num>')->to('list1#soc31') -> name( 'stranitsa31' );
  $r->post('/page31/<user_id:num>')->to('list1#answer31');
  $r->get('/page32/<user_id:num>')->to('list1#soc32') -> name( 'stranitsa32' );
  $r->post('/page32/<user_id:num>')->to('list1#answer32');
  $r->get('/page33/<user_id:num>')->to('list1#soc33') -> name( 'stranitsa33' );
  $r->post('/page33/<user_id:num>')->to('list1#answer33');
  $r->get('/page34/<user_id:num>')->to('list1#soc34') -> name( 'stranitsa34' );
  $r->post('/page34/<user_id:num>')->to('list1#answer34');
  $r->get('/page35/<user_id:num>')->to('list1#soc35') -> name( 'stranitsa35' );
  $r->post('/page35/<user_id:num>')->to('list1#answer35');
  $r->get('/page36/<user_id:num>')->to('list1#soc36') -> name( 'stranitsa36' );
  $r->post('/page36/<user_id:num>')->to('list1#answer36');
  $r->get('/page37/<user_id:num>')->to('list1#soc37') -> name( 'stranitsa37' );
  $r->post('/page37/<user_id:num>')->to('list1#answer37');
  $r->get('/page38/<user_id:num>')->to('list1#soc38') -> name( 'stranitsa38' );
  $r->post('/page38/<user_id:num>')->to('list1#answer38');
  $r->get('/page39/<user_id:num>')->to('list1#soc39') -> name( 'stranitsa39' );
  $r->post('/page39/<user_id:num>')->to('list1#answer39');
  $r->get('/page40/<user_id:num>')->to('list1#soc40') -> name( 'stranitsa40' );
  $r->post('/page40/<user_id:num>')->to('list1#answer40');
  $r->get('/page41/<user_id:num>')->to('list1#soc41') -> name( 'stranitsa41' );
  $r->post('/page41/<user_id:num>')->to('list1#answer41');
  $r->get('/page42/<user_id:num>')->to('list1#soc42') -> name( 'stranitsa42' );
  $r->post('/page42/<user_id:num>')->to('list1#answer42');
  $r->get('/page43/<user_id:num>')->to('list1#soc43') -> name( 'stranitsa43' );
  $r->post('/page43/<user_id:num>')->to('list1#answer43');
  $r->get('/page44/<user_id:num>')->to('list1#soc44') -> name( 'stranitsa44' );
  $r->post('/page44/<user_id:num>')->to('list1#answer44');
  $r->get('/page45/<user_id:num>')->to('list1#soc45') -> name( 'stranitsa45' );
  $r->post('/page45/<user_id:num>')->to('list1#answer45');
  $r->get('/page46/<user_id:num>')->to('list1#soc46') -> name( 'stranitsa46' );
  $r->post('/page46/<user_id:num>')->to('list1#answer46');
  $r->get('/page47/<user_id:num>')->to('list1#soc47') -> name( 'stranitsa47' );
  $r->post('/page47/<user_id:num>')->to('list1#answer47');
  $r->get('/page48/<user_id:num>')->to('list1#soc48') -> name( 'stranitsa48' );
  $r->post('/page48/<user_id:num>')->to('list1#answer48');
  $r->get('/page49/<user_id:num>')->to('list1#soc49') -> name( 'stranitsa49' );
  $r->post('/page49/<user_id:num>')->to('list1#answer49');
  $r->get('/page50/<user_id:num>')->to('list1#soc50') -> name( 'stranitsa50' );
  $r->post('/page50/<user_id:num>')->to('list1#answer50');
  $r->get('/page51/<user_id:num>')->to('list1#soc51') -> name( 'stranitsa51' );
  $r->post('/page51/<user_id:num>')->to('list1#answer51');
  $r->get('/page52/<user_id:num>')->to('list1#soc52') -> name( 'stranitsa52' );
  $r->post('/page52/<user_id:num>')->to('list1#answer52');
  $r->get('/page53/<user_id:num>')->to('list1#soc53') -> name( 'stranitsa53' );
  $r->post('/page53/<user_id:num>')->to('list1#answer53');
  $r->get('/page54/<user_id:num>')->to('list1#soc54') -> name( 'stranitsa54' );
  $r->post('/page54/<user_id:num>')->to('list1#answer54');
  $r->get('/page55/<user_id:num>')->to('list1#soc55') -> name( 'stranitsa55' );
  $r->post('/page55/<user_id:num>')->to('list1#answer55');
  $r->get('/page56/<user_id:num>')->to('list1#soc56') -> name( 'stranitsa56' );
  $r->post('/page56/<user_id:num>')->to('list1#answer56');
  $r->get('/page57/<user_id:num>')->to('list1#soc57') -> name( 'stranitsa57' );
  $r->post('/page57/<user_id:num>')->to('list1#answer57');
  $r->get('/page58/<user_id:num>')->to('list1#soc58') -> name( 'stranitsa58' );
  $r->post('/page58/<user_id:num>')->to('list1#answer58');
  $r->get('/page59/<user_id:num>')->to('list1#soc59') -> name( 'stranitsa59' );
  $r->post('/page59/<user_id:num>')->to('list1#answer59');
  $r->get('/page60/<user_id:num>')->to('list1#soc60') -> name( 'stranitsa60' );
  $r->post('/page60/<user_id:num>')->to('list1#answer60');
  $r->get('/page61/<user_id:num>')->to('list1#soc61') -> name( 'stranitsa61' );
  $r->post('/page61/<user_id:num>')->to('list1#answer61');
  $r->get('/page62/<user_id:num>')->to('list1#soc62') -> name( 'stranitsa62' );
  $r->post('/page62/<user_id:num>')->to('list1#answer62');
  $r->get('/page63/<user_id:num>')->to('list1#soc63') -> name( 'stranitsa63' );
  $r->post('/page63/<user_id:num>')->to('list1#answer63');
  $r->get('/page64/<user_id:num>')->to('list1#soc64') -> name( 'stranitsa64' );
  $r->post('/page64/<user_id:num>')->to('list1#answer64');
  $r->get('/page65/<user_id:num>')->to('list1#soc65') -> name( 'stranitsa65' );
  $r->post('/page65/<user_id:num>')->to('list1#answer65');
  $r->get('/page66/<user_id:num>')->to('list1#soc66') -> name( 'stranitsa66' );
  $r->post('/page66/<user_id:num>')->to('list1#answer66');
  $r->get('/page67/<user_id:num>')->to('list1#soc67') -> name( 'stranitsa67' );
  $r->post('/page67/<user_id:num>')->to('list1#answer67');
  $r->get('/page68/<user_id:num>')->to('list1#soc68') -> name( 'stranitsa68' );
  $r->post('/page68/<user_id:num>')->to('list1#answer68');
  $r->get('/page69/<user_id:num>')->to('list1#soc69') -> name( 'stranitsa69' );
  $r->post('/page69/<user_id:num>')->to('list1#answer69');
  $r->get('/page70/<user_id:num>')->to('list1#soc70') -> name( 'stranitsa70' );
  $r->post('/page70/<user_id:num>')->to('list1#answer70');
  $r->get('/page71/<user_id:num>')->to('list1#proverka_otvetov') -> name( 'stranitsa71' );
 
}

1;

