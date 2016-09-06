# Can the module be instanced

use Test::Simple tests => 2;

use Rcs::Parser;
ok(1);

my $rcs = new Rcs::Parser;
ok(defined $rcs);