use strict;
use warnings;
use diagnostics;

use feature 'say';
use v5.16;

# Strings are scalars like everything else

my $long_string = "Random long string";

say "Length of String ", length $long_string;
say "Long is at ", index($long_string,"long"); # index of first occurance or -1 if not found
say "Last 'g' is at ", rindex($long_string,"g"); # index of last occurance or -1 if not found

$long_string = $long_string.' isn\'t that long'; # simple concatenation
say $long_string;

say "Index 7 through 10 ", substr $long_string, 7, 4;
# word 'long' substr(word,inclusive_idx,exclusive_idx)

my $animal = "animals";
# chop deletes and returns the LAST CHARACTER
printf("Last character is %s \n", chop $animal);

# chomp deletes the LAST NEWLINE
my $no_newline = "No Newline\n";
chomp $no_newline;
say $no_newline;

# Uppercase and lowercase functions
printf("Uppercase : %s \n", uc $long_string);
printf("Lowercase : %s \n", lc $long_string);
printf("1st Uppercase : %s \n", ucfirst $long_string);

# REPLACE (s///)

# Must have ~ after =
$long_string =~ s/ /, /g; # replace all spaces with comma-spaces
say $long_string;

# Repeat a string
my $two_times_string = $long_string x 2;
say $two_times_string; # repeats string twice

# RANGES (of letters or numbers)
my @abcs = ('a' .. 'z');
my @abcs = (1 .. 12);
say @abcs;

print join(", ", @abcs), "\n"; # create a string by joining list elements by first passed argument
# join(joining_character, list)

# possible to increment letters as well as numbers
my $letter = 'a';
say ++$letter; # prints 'b'