package MyApp::Controller::Table;
use Mojo::Base 'Mojolicious::Controller';


sub list {
	my $c = shift;

	my $table =  ucfirst $c->param( 'table' );
	my $dsTable =  $c->model( $table );

	$c->render( "Table/list", rows => $dsTable );	
}


sub view {
	my $c = shift;

    my $table =  ucfirst $c->param( 'table' );

	my $id    =  $c->param( 'id' );
	my $row  =  $c->model( $table )->search({
		id   => $id,
    })->first;

	$c->render( "Table/view_row", row => $row );
}


sub delete {
	my $c = shift;
    my $table =  ucfirst $c->param( 'table' );
    my $id =  $c->param( 'id' );

    my $guard =  $c->atomic_change;

    $c->model( $table )->search({
		id   => $id,
    })->delete;

    $guard->commit;

	my $referrer =  $c->req->headers->referrer;
	$c->redirect_to( $referrer );
}


sub create_get {
  my $c = shift;
  my $table =  ucfirst $c->param( 'table' );
  my $row =  $c->model( $table );

  $c->render( "Table/create_row", row => $row );
}


sub create_post {
	my $c = shift;

	my $table =  ucfirst $c->param( 'table' );
    my $columns = $c->table_columns( $table );
	my $data =  {};
	my $data2 =  {};

	for my $field ( @$columns ) {
		$data->{ $field } =  $c->param( $field );
	}

	print $data2->{ field };
	print $data ->{ field };

    $c->model( $table )->create( $data );

	$c->redirect_to( 'list' );
}


sub edit_get {
	my $c = shift;

	my $table =  ucfirst $c->param( 'table' );

	my $id =  $c->param( 'id' );
	my $row =  $c->model( $table )->search({ id => $id })->first;

	$c->render( "/Table/edit_row", row => $row );
}


sub edit_post {
	my $c = shift;

	my $table =  ucfirst $c->param( 'table' );
    my $columns = $c->table_columns( $table );
	my $data =  {};

	for my $field ( @$columns ) {
		$data->{ $field } =  $c->param( $field );
	}

	my $row =  $c->model( $table )->search({ id => $c->param( 'id' ) })->first;
	$row->update( $data );

	$c->redirect_to( 'list' );
}

1;

