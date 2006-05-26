############################################################
#
#   $Id$
#   Tie::RRD - Minimal tied interface to RRD files
#
#   Copyright 2006 Nicola Worthington
#
#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at
#
#       http://www.apache.org/licenses/LICENSE-2.0
#
#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.
#
############################################################

package Tie::RRD;
# vim:ts=4:sw=4:tw=78

use strict;
use RRD::Simple qw();
use Carp qw(croak carp);

use vars qw($VERSION $DEBUG);

$VERSION = '0.01' || sprintf('%d', q$Revision$ =~ /(\d+)/g);
$DEBUG = $ENV{DEBUG} ? 1 : 0;

sub TIEHASH {
	my $class = shift;
	my $self = {};
	bless $self, $class;
	return $self;
}

sub FETCH {
	my $self = shift;
}

sub STORE {
	my $self = shift;
}

sub UNTIE {
}

sub DESTROY {
}

sub DELETE {
	my $self = shift;
}

sub EXISTS {
	my $self = shift;
}

sub FIRSTKEY {
	my $self = shift;
}

sub NEXTKEY {
}

sub SCALAR {
}

sub TRACE {
	return unless $DEBUG;
	warn(shift());
}

sub DUMP {
	return unless $DEBUG;
	eval {
		require Data::Dumper;
		warn(shift().': '.Data::Dumper::Dumper(shift()));
	}
}

1;

=pod

=head1 NAME

Tie::RRD - Minimal tied interface to RRD files

=head1 SYNOPSIS

 use strict;
 use Tie::RRD;
 
=head1 DESCRIPTION

=head1 SEE ALSO

L<RRD::Simple>, L<RRDTool::OO>

=head1 VERSION

$Id$

=head1 AUTHOR

Nicola Worthington <nicolaw@cpan.org>

L<http://perlgirl.org.uk>

=head1 COPYRIGHT

Copyright 2006 Nicola Worthington.

This software is licensed under The Apache Software License, Version 2.0.

L<http://www.apache.org/licenses/LICENSE-2.0>

=cut


__END__

