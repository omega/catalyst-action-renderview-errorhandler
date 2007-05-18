package TestApp2;

use strict;
use Catalyst;

our $VERSION = '0.01';
use FindBin;

TestApp2->config( name => 'TestApp', root => "$FindBin::Bin/lib/TestApp2/root", );

TestApp2->setup;

sub test_ok : Global {
    my( $self, $c ) = @_;
    return 1;
}

sub test_die : Global {
    my ( $self, $c ) = @_;
    die "Death by action";
}

sub end : ActionClass('RenderView::ErrorHandler') {}

1;
