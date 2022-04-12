use strict;
use warnings;
use diagnostics;

use feature 'say';
use v5.16;

# An array is a list of scalars that use @ instead of $
my @primes = (2, 3, 5, 7, 11, 13, 17);

# It can store multiple data types:
my @my_info = ("Bojan", "123 Main St", 27, 6.25);

# New values can be assigned by index:
$my_info[4] = "Josilo";

# Access array items by index starting at 0:
say $my_info[4];

# Iterating through the array
for my $info (@my_info){
  say $info;
}

# foreach cycles through an array
foreach my $num (@primes){
  say "Prime : ", $num;
}

# $_ is automatically used if no variable is declared
for (@my_info){
  say $_;
}

# Slice data from an array
# ("Bojan", "123 Main St", 27, 6.25, "Josilo");
my @my_name = @my_info[0, 4];
say @my_name; # BojanJosilo

# When scalar is used on an array it returns the length of the array
my $items = scalar @my_info;
# say $items; # 5

