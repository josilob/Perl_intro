# Perl considers undef, 0, 0.0, "" and "0" to be false
# operators: ==, !=, >, >=, <, <=
# Boolean operators: !, &&, ||
# if, elsif, else

# If, else if, else statements
$age = 80;
my $is_not_intoxicated = 1;
my $age_last_exam = 16;

# Simple if example
if($age < 16){
  say "You can't drive";
} elsif(!$is_not_intoxicated) {
  say "You can't drive";
} else {
  say "You can drive";
}

# More complex logic review
if(($age >= 1) && ($age < 16)){
  say "You can't Drive";
} elsif(!$is_not_intoxicated){
  say "You can't drive";
} elsif(($age >= 80) && (($age > 100) || (($age - $age_last_exam) > 5))){
  say "You can't drive";
} else {
  say "You can drive";
}

# Comparison operators for STRINGS
# eq, ne, lt, le, gt, ge
if('a' eq 'b'){
  say "a equals b";
} else {
  say "a doesn't equal b";
}

# UNLESS is the opposite of if
unless(!$is_not_intoxicated){
  say "Get Sober";
}

# Ternary operator returns different values depending on a condition
say (($age > 18) ? "Can Vote" : "Can't Vote");

# ---------- LOOPING ----------

# For loop
for(my $i = 0; $i < 10; $i++){
  say $i;
}

# Print odds with the While loop
my $i = 1;

while ($i < 10){
  if($i % 2 == 0){
    $i++;

    # next skips back to the beginning of the loop
    next;
  }

  # Last exits out of the loop
  if($i == 7){ last; }

  say $i;
  $i++;
}

# The Do while loop is used when you must loop once
my $lucky_num = 7;
my $guess;
do {
  say "Guess a Number Between 1 and 10";

  # This is how you get user input
  $guess = <STDIN>;
} while $guess != $lucky_num;

say "You guessed 7";

# Given When Perl Switch statement
my $age_old = 18;
given ($age_old) {
  when($_ > 16) {
    say "Drive";

    # Will continue with the next cases
    continue;
  }
  when($_ > 17) {say "Go Vote";}
  default {say "Nothing Special";}
}