# Fizz Buzz Cheatsheet Builder

Want to cheat on the Fizz Buzz game? Use this script to print yourself a handy cheatsheet.

## What is Fizz Buzz?
Fizz Buzz is a math game most popular with children learning division and multiplication. To play, players sit in a circle and count up from 1, usually to 100.

The standard rules are that:
- Any time a number is divisible by 3, you have to say 'Fizz' instead of the number.
- Any time a number is divisible by 5, you have to say 'Buzz' instead of the number.
- Any time a number is divible by 3 and 5, you have to say 'FizzBuzz' instead of the number.

## Standard Cheatsheet
To get a cheatsheet for the game with the rules described above, simply save the fizz_buzz.rb file in a folder and open up an IRB console in the terminal.

```Ruby
irb(main):001:0> require_relative 'fizz_buzz'
=> true
irb(main):002:0> FizzBuzz.new.print
1: 1
2: 2
3: Fizz
4: 4
5: Buzz
6: Fizz
7: 7
8: 8
9: Fizz
...etc, up to 100
```

## What if I don't want to go up to 100?

```Ruby
# Use the print_up_to method
FizzBuzz.new.print_up_to(15)
```

## What if I want more divisors in my game?

```Ruby
# Pass in your rules when initializing the FizzBuzz class
FizzBuzz.new(3=> 'Fizz', 5=> 'Buzz', 7=> 'Dazz', 11=> 'Kezz').print_up_to(1000)
```
