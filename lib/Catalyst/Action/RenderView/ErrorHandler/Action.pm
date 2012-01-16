package Catalyst::Action::RenderView::ErrorHandler::Action;
#ABSTRACT: A Role for any actions that want to react to errors.

use strict;
use warnings;
use Moose::Role;

has 'id' => (is => 'ro', isa => 'Str', required => 1);
has 'ignorePath' => (is => 'ro', isa => 'Str', required => 0);

requires 'perform';

1;

__END__

=head1 DESCRIPTION

A Role that should be consumed by actions that are implemented

=head1 SYNOPSIS

    use Moose;

    with 'Catalyst::Action::RenderView::ErrorHandler::Action';

=head1 INTERFACE

=head2 ACCESSORS

=head3 id

This is the ID which you can refer to when defining handlers

=head2 REQUIRED METHODS

=head3 perform

This method need to be implemented by consuming classes.

It will be called with C<$context>, and thus makes it possible
to access C<< $context->errors >> for instance, include them in an
email or whatnot

=head2 INHERITED METHODS

=head3 meta

Inherited from L<Moose>

