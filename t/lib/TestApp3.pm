package TestApp3;

use strict;
use Catalyst qw(-Debug);

our $VERSION = '0.01';
use FindBin;

TestApp3->config( name => 'TestApp', root => "$FindBin::Bin/lib/TestApp3/root", );

TestApp3->setup;

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
