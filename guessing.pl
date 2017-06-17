#!/bin/perl -w

use warnings;

$min = 100;
$max = 200;
$guess = -1;
$random = int(rand($max - $min)) + $min;
$count = 0;
$allowedGuesses = 7;

print "Guess a number between 100 and 200.  You are allowed 7 guesses.\n";

while ($guess != $random && $count < $allowedGuesses) {

	$count++;
	print "Enter guess $count: ";
	$guess = <STDIN>;

	if ($guess > $random) {
		print "high guess\n";
	}
	elsif ($guess < $random) {
		print "low guess\n";
	}
}

if ($guess == $random) {
	print "Correct!  That took $count guesses.\n";
} else {
	print "Sorry!  You are only allowed 7 guesses.\n";
}

print "Enter your name: ";
my $name = <STDIN>;

open(my $fh, '>>', 'highscores.txt');
print %fh "$name - $count guesses";








