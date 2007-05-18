package TestApp;

use strict;
use Catalyst;

our $VERSION = '0.01';
use FindBin;

TestApp->config( name => 'TestApp', root => "$FindBin::Bin/lib/TestApp/root", 
error_handler => {
    actions => [
        {
            type => 'Log',
            id => 'log-server',
            level => 'error',
        }
    ],
    handlers => {
        '5xx' => { template => 'error/5xx',  },
        '500' => { template => 'error/500', actions => [qw(log-server)]},
    },
});

TestApp->setup;

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
