# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl test.pl'

use strict;
use warnings;

use Test::More qw(no_plan); 

use CGI::AppBuilder::Log;
my $class = 'CGI::AppBuilder::Log';
my $obj = CGI::AppBuilder::Log->new; 

isa_ok($obj, "CGI::AppBuilder::Log");

my @md = @CGI::AppBuilder::Log::EXPORT_OK;
foreach my $m (@md) {
    ok($obj->can($m), "$class->can('$m')");
}

1;

