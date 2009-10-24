package TestApp2;

use strict;
use Catalyst;

our $VERSION = '0.01';
use FindBin;

TestApp2->config( name => 'TestApp', root => "$FindBin::Bin/lib/TestApp2/root", );

TestApp2->setup;

1;
