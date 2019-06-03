package MyApp;
use Mojo::Base 'Mojolicious';

# This method will run once at server start
sub startup {
  my $self = shift;

  unshift @{ $self->commands->namespaces }, 'MyApp::Command';

  # Load configuration from hash returned by "my_app.conf"
  my $config = $self->plugin('Config', {file => 'etc/my_app.conf'});

  # Documentation browser under "/perldoc"
  $self->plugin('PODRenderer') if $config->{perldoc};


  # Router
  my $r = $self->routes;

  # Normal route to controller
  $r->get('/')->to('example#welcome');
  $r->get('/calc')->to('calculator#doit');
  $r->get('/abcd')->to('abetka#dock');
  $r->get('/abc')->to('massiv#doit');

  $r->get('/qqq123')->to('form1#soccer');
  $r->post('/qqq123')->to('form1#user_input');

  $r->get('/qqq124')->to('form2#soccer');

  $r->get('/page01')->to('list1#soc01');
  $r->get('/page02')->to('list1#soc02');
  $r->get('/page03')->to('list1#soc03');
  $r->get('/page04')->to('list1#soc04');
  $r->get('/page05')->to('list1#soc05');
  $r->get('/page06')->to('list1#soc06');
  $r->get('/page07')->to('list1#soc07');
  $r->get('/page08')->to('list1#soc08');
  $r->get('/page09')->to('list1#soc09');
  $r->get('/page10')->to('list1#soc10');
  $r->get('/page11')->to('list1#soc11');
  $r->get('/page12')->to('list1#soc12');
  $r->get('/page13')->to('list1#soc13');
  $r->get('/page14')->to('list1#soc14');
  $r->get('/page15')->to('list1#soc15');
  $r->get('/page16')->to('list1#soc16');
  $r->get('/page17')->to('list1#soc17');
  $r->get('/page18')->to('list1#soc18');
  $r->get('/page19')->to('list1#soc19');
  $r->get('/page20')->to('list1#soc20');
  $r->get('/page21')->to('list1#soc21');
  $r->get('/page22')->to('list1#soc22');
  $r->get('/page23')->to('list1#soc23');
  $r->get('/page24')->to('list1#soc24');
  $r->get('/page25')->to('list1#soc25');
  $r->get('/page26')->to('list1#soc26');
  $r->get('/page27')->to('list1#soc27');
  $r->get('/page28')->to('list1#soc28');
  $r->get('/page29')->to('list1#soc29');
  $r->get('/page30')->to('list1#soc30');
  $r->get('/page31')->to('list1#soc31');
  $r->get('/page32')->to('list1#soc32');
  $r->get('/page33')->to('list1#soc33');
  $r->get('/page34')->to('list1#soc34');
  $r->get('/page35')->to('list1#soc35');
  $r->get('/page36')->to('list1#soc36');
  $r->get('/page37')->to('list1#soc37');
  $r->get('/page38')->to('list1#soc38');
  $r->get('/page39')->to('list1#soc39');
  $r->get('/page40')->to('list1#soc40');
  $r->get('/page41')->to('list1#soc41');
  $r->get('/page42')->to('list1#soc42');
  $r->get('/page43')->to('list1#soc43');
  $r->get('/page44')->to('list1#soc44');
  $r->get('/page45')->to('list1#soc45');
  $r->get('/page46')->to('list1#soc46');
  $r->get('/page47')->to('list1#soc47');
  $r->get('/page48')->to('list1#soc48');
  $r->get('/page49')->to('list1#soc49');
  $r->get('/page50')->to('list1#soc50');
  $r->get('/page51')->to('list1#soc51');
  $r->get('/page52')->to('list1#soc52');
  $r->get('/page53')->to('list1#soc53');
  $r->get('/page54')->to('list1#soc54');
  $r->get('/page55')->to('list1#soc55');
  $r->get('/page56')->to('list1#soc56');
  $r->get('/page57')->to('list1#soc57');
  $r->get('/page58')->to('list1#soc58');
  $r->get('/page59')->to('list1#soc59');
  $r->get('/page60')->to('list1#soc60');
  $r->get('/page61')->to('list1#soc61');
  $r->get('/page62')->to('list1#soc62');
  $r->get('/page63')->to('list1#soc63');
  $r->get('/page64')->to('list1#soc64');
  $r->get('/page65')->to('list1#soc65');
  $r->get('/page66')->to('list1#soc66');
  $r->get('/page67')->to('list1#soc67');
  $r->get('/page68')->to('list1#soc68');
  $r->get('/page69')->to('list1#soc69');
  $r->get('/page70')->to('list1#soc70');
  $r->get('/page71')->to('list1#soc71');
  
  

  $r->get('/form')->to('form#show');
  $r->post('/form')->to('form#user_input');

  


}

1;

