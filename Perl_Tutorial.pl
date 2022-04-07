use strict;
use warnings;
use diagnostics;

use feature 'say';
use feature 'switch'; #given when

use v5.16; # specific perl version

print "Hello World\n";

# Perl data types: Scalars, Arrays, Hashes
# In Perl sigils represent more general categories
# Scalars are prefixed with '$'
# Arrays are prefixed with '@'
# Hashes are prefixed with '%'
# Subroutines (functions) are prefixed with '&'

# Scalar is a single unit of data (number - integer or float, string, character, paragraph, entire web page)

my $name = 'Bojan'
#keyword 'my' enables variable scope and prevents global variables
# $ means we are declaring a scalar or a single value (variables must start with a letter or underscore)
# by default value will be undefined

# Multiple values can be assigned like this:
my ($age, $street) = (40, '123 Main St');