package TestApp4;
use strict;
use Catalyst qw(-Debug);

our $VERSION = '0.01';
use FindBin;

TestApp4->config( name => 'TestApp4', root => "$FindBin::Bin/lib/TestApp4/root",
  error_handler => {
    enable => 1,
  }
);

TestApp4->setup;

1;
