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
        '404' => { template => 'error/404', },
        '5xx' => { template => 'error/5xx', },
        '500' => { template => 'error/500', actions => [qw(log-server)]},
    },
    expose_stash => 'key',
});

TestApp->setup;

1;
