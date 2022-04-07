use strict;
use warnings;
use diagnostics;

use feature 'say';
use v5.16;

say "5 + 4 = ", 5 + 4;
say "5 - 4 = ", 5 - 4;
say "5 * 4 = ", 5 * 4;
say "5 / 4 = ", 5 / 4;
say "5 % 4 = ", 5 % 4;
say "5 ** 4 = ", 5 ** 4;

say "EXP 1 = ", exp 1;
say "HEX 10 = ", hex 10;
say "OCT 10 = ", oct 10;
say "INT 6.45 = ", int(6.45);
say "LOG 2 = ", log 2;
say "Random between 0 - 10 = ", int(rand 11);
say "SQRT 9 = ", sqrt 9;

# shorthand assignment operators:
my $rand_num = 5;
$rand_num+=1; # is the same as $rand_num = $rand_num + 1;
say "Number incremented ", $rand_num;

say "6++ = ", $rand_num++;
say "++6 = ", ++$rand_num;
say "6-- = ", $rand_num--;
say "--6 = ", --$rand_num;


# Order of operations - precedence
say "3 + 2 * 5 =", 3 + 2 * 5;
say "(3 + 2) * 5 =", (3 + 2) * 5;