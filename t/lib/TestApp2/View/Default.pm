package TestApp2::View::Default;

use base qw( Catalyst::View );

sub process {
    my( $self, $c ) = @_;
    $c->res->body('Everything is OK');
}

1;