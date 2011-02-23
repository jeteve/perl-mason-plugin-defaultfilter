package Mason::Plugin::DefaultFilter::Interp;

use Mason::PluginRole;

# VERSION

has default_filters => ( isa => 'ArrayRef', default => sub { [] } );

1;
