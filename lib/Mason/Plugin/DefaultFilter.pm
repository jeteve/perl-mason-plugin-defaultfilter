package Mason::Plugin::DefaultFilter;
# ABSTRACT: Automatically apply filters to substitution tags

use Moose;
with 'Mason::Plugin';

# VERSION

1;

=head1 SYNOPSIS

    my $interp = Mason->new(
        plugins => ['DefaultFilter'],
        default_filters  => ['NoBlankLines','Trim'],
    );

In your templates:

    <% $foo %>    # Automatically gets NoBlankLines and Trim applied
    <% $bar |N %> # Don't apply any default filters to this

=head1 DESCRIPTION

This plugin allows you to define default filters for Mason substitution tags.

This is equivalent functionality to the old "default_escape_flags" setting in
Mason 1.x.

Default filters are only applied to substitution tags without any filters
specified.  You can specify the magical "N" filter (as in Mason 1.x) to prevent
a substitution tag from having the default filters applied.

=head1 INTERP PARAMETERS

=over

=item default_filters

An array ref of filter names to apply by default.

=back

=head1 CAVEATS

Currently this only works on substitution tags (<% $foo %>).  This is probably
the only case where it's useful.

This plugin prevents you from having a filter actually named "N".

The plugin behaves the same as if you supplied @default_filters as a
L<pipe invocation|Mason::Manual::Filters/"Pipe_invocation"> and is thus subject
to the same restrictions on functionality.

=head1 SEE ALSO

L<Mason|Mason>
