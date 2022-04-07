use strict;
use warnings;
use diagnostics;

use feature 'say';
use feature 'switch'; #given when

use v5.16; # specific perl version

print "Hello World\n";
say "Hello World"; #no need for new lines, say automatically adds it

# Semicolons are REQUIRED after all simple statements in Perl (except at the end of a block).

# Perl data types: Scalars, Arrays, Hashes
# In Perl sigils represent more general categories
# Scalars are prefixed with '$'
# Arrays are prefixed with '@'
# Hashes are prefixed with '%'
# Subroutines (functions) are prefixed with '&'

# Scalar is a single unit of data (number - integer or float, string, character, paragraph, entire web page)

my $name = 'Bojan';
#keyword 'my' enables variable scope and prevents global variables (assigning new variable)
# $ means we are declaring a scalar or a single value (variables must start with a letter or underscore)
# by default value will be undefined

# Multiple values can be assigned like this:
my ($age, $street) = (27, '123 Main St');

my $my_info = "$name lives on \"$street\"\n"; # variables can be interpolated inside double quotes
$my_info = qq{$name lives on "$street"\n}; #interpolation without escaping double quotes (like string literal)
# for single quote strings use q{}

print $my_info;

# Long strings over multiple lines can be defined like this

my $bunch_of_info = <<"END";
This is a bunch
of information
on multiple lines
END

say $bunch_of_info;

my $big_int = 18446744073709551615; # Biggest integer available

#printf allows string formatting by defining data types followed by % sign
# %c : Character
# %s : String
# %d : Decimal
# %u : Unsigned Integer
# %f : Floating point (decimal notation)
# %e : Floating point (scientific notation)

printf("%u \n", $big_int + 1); # still prints the same number since it cant be incremented

my $big_float = .1000000000000001;
printf("%.16f \n", $big_float + .1000000000000001); # prints 0.2000000000000002

my $first = 1;
my $second = 2;
($first,$second) = ($second,$first); # switch values
say "$first, $second"; # 2,1 instead of 1,2
