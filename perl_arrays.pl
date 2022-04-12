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
