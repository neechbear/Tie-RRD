# $Id$

chdir('t') if -d 't';
use lib qw(./lib ../lib);
use Test::More tests => 2;

use_ok('Tie::RRD');
require_ok('Tie::RRD');

1;

