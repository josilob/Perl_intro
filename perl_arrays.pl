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

# Assign values from array to variables
my ($f_name, $address, $how_old, $height, $l_name) = @my_info;
say "$f_name $l_name";

# Pop the last value off an array
say "Popped Value ", pop @primes;

# Push puts one on the end and returns the length
say "Pushed Value ", push @primes, 17;
print join(", ", @primes), "\n";

# Return the first item with shift
say "First Item ", shift @primes;

# Add a value to the front and get the length
say "Unshifted Item ", unshift @primes, 2;
print join(", ", @primes), "\n";

# Splice out values array, index to start, length
# Returns those values
say "Remove Index 0 - 2 ", splice @primes, 0, 3;
print join(", ", @primes), "\n";

# Join can also join a list like this
print join " ", ('list', 'of', 'words', "\n");

# Split turns a string into an array
my $customers = "Sue Sally Paul";
my @cust_array = split / /, $customers;
print join(", ", @cust_array), "\n";

# Reverse reverses an array
@cust_array = reverse @cust_array;
print join(", ", @cust_array), "\n";

# Sort sorts an array
@cust_array = sort @cust_array;
print join(", ", @cust_array), "\n";

# Sort in reverse order
@cust_array = reverse sort @cust_array;
print join(", ", @cust_array), "\n";

# Grep filters a list according to an expression
my @number_array = (1,2,3,4,5,6,7,8);

# Adds the value if modulus operation doesn't return 0
my @odds_array = grep {$_ % 2} @number_array;
print join(", ", @odds_array), "\n";

# Map performs a function on every item
my @dbl_array = map {$_ * 2} @number_array;
print join(", ", @dbl_array), "\n";