#!/bin/perl -w

use warnings;

use Cwd;

my $dir = getcwd();

$count = 0;
$totalSize = 0;

opendir(DIR, $dir) || die "Error\n";

while ($count = readdir(DIR)) {
	
	$size = -s "$fileName";
	$totalSize += $size;
	$count++;	
}

closedir(DIR);

print "Total Files: $count\n";
print "Total Bytes: $totalSize\n";