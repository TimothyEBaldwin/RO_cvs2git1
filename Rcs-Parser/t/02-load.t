# Does the module load a test file successfully

use Test::Simple tests => 1;

use Rcs::Parser;
my $rcs = new Rcs::Parser;

my $ret = $rcs->load('t/test.rcs,v');
ok($ret == 1);