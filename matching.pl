#!/bin/perl -w

#Script By: Chris Huynh

use warnings;

$min = -10;
$max = 10;
$r1 = int(rand($max - $min)) + $min;
$r2 = int(rand($max - $min)) + $min;

if ($r1 == $r2) {
	print "Match Found\n";
} else {
	print "Different Numbers\n";
}