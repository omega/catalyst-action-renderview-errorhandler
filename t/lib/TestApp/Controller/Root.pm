package TestApp::Controller::Root;

use base qw(Catalyst::Controller);

__PACKAGE__->config->{namespace} = '';


sub test_ok : Global {
    my( $self, $c ) = @_;
    return 1;
}

sub test_die : Global {
    my ( $self, $c ) = @_;
    die "Death by action";
}

sub test_view_death : Global {
    my ( $self, $c ) = @_;
    $c->stash->{'view_death'} = 1;
}
sub test_4xx : Global {
    my ( $self, $c ) = @_;
    $c->res->status(404);
}
sub end : ActionClass('RenderView::ErrorHandler') {}



1;
