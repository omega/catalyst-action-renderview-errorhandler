package TestApp::View::Default;

use base qw( Catalyst::View::TT );

sub process {
    my( $self, $c ) = @_;
    if ($c->stash->{'view_death'}) {
        $c->res->status(501);
        die "Death by view";
        
    }
    
    $self->NEXT::process($c);
}

1;