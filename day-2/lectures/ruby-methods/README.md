## Unit 2: Ruby Methods - Lecture Notes

### SWBATs
+ Look up pre-written Ruby methods, write their own methods, and understand the importance and function of scope and return values.

### Motivation / Why Should You Care?
+ Remember all that cool stuff we can do to a string, like `reverse` and `swapcase`? Those methods are part of Ruby’s built-in methods. Coding becomes very powerful when you start to write your own methods. They allow you to invoke powerful tasks that you’ve defined yourself using just one word (the method call). 

### Lesson Plan
WHAT ARE METHODS
+ CHAINING METHODS: How would you make the word “Ruby” appear in all caps and backwards?
+ There are PRE-WRITTEN METHODS for different data types. You can use `upcase` on a string but not on an integer or a float.
  + Google search to find Ruby’s built-in library.
  + If a method you want to use isn’t prewritten, you can create your own.
+ METHOD DEFINITION: A set of instructions that tells the computer to do something. You can write code once, and then re-use it as many times as you want.
+ WRITE ON BOARD, THEN EXECUTE by having a student follow the pseudo code in the `go_home` method. (Note: feel free to have fun with this one.)
```ruby
def go_home
 # close your computer
 # put it in your bag
 # do a jumping jack
 # stand up
 # walk out the door
end
```
+ BE EXPLICIT: You need to give really explicit instructions to a computer when you create a method.
+ SYNTAX: Show generic code to students. Walk them through the pieces.
```ruby
def method_name
 your code goes here!
end
```
+ SHARE A REAL EXAMPLE:
```ruby
def hello_world
 puts "Hello, world!"
end
```
+ SAVE AND RUN CODE. Nothing happens. Have the students discuss why.
+ DEFINING A METHOD = the HOW. But we also need to CALL it for it to execute.
  + BIKE EXAMPLE: You know how to ride a bike, but you must call `ride_bike` to do it. Like actually get on a bike and moving your legs on the pedals.
  + OPTIONAL DICTIONARY EXAMPLE: A dictionary contains the definitions of all the words, but we don’t use these definition until we are actually saying the words or using them in a sentence.
+ HOW TO CALL A METHOD: Write the method name. Add `hello_world` call to the file and run it to show the class.
+ Write a few more methods with the class:
  1. How old will I be in 10 years?
  2. What is my name spelled backwards.
  3. Change all w’s to v’s.
+ Break and have students write and call methods in [Methods Practice Lab](https://github.com/learn-co-curriculum/hs-ruby-2-methods-practice-lab)

INTERACTIVE RUBY (IRB)
+ It’s been really fun writing everything out in a file and then running that file to see what happens, but wouldn’t it be nice if we could experiment without saving and re-running the file every time? That's where Interactive Ruby aka IRB comes in.
  + IRB == REPL (like Codeacademy)
  + In terminal type `irb` then `1 + 1` and `name = "Your Name"`
  + Thing after `=>` is RETURN VALUE
  + Notables about IRB
    + IRB = ONLY Ruby. NO bash here.
    + IRB doesn't save your work.
    + it's an experimentation tool.
    + IRB METHOD. Copy and paste `hello_world` method into IRB
      + Why do you see `:hello_world`? Because IRB is letting you know this method is ready for you to use.
      + Call it with `hello_world`. Then we see Hello world! print to the screen and the return value `nil`. What is this `nil`?

RETURN VALUE
+ Always the result of the last line of code. Like a receipt. Why is the return value of this code `nil`?:
```ruby
def hello_world 
 puts “Hello world!” 
end
```
  + `puts` JUST PRINTS TO SCREEN and returns NOTHING, or NIL. The last line of our program is calling the `puts` method. Let’s look at another example:
```ruby
def hello_world 
puts “Hello world!” 
return “Hello world!”
end
```
  + The RETURN VALUE is “Hello world!”
  + Try deleting `“Hello world!”` and replacing it with `1 + 1`. What was the return value? 
  + We don't actually need the word `return` because it is implicit.
  + WHY IMPORTANT? Because one method might need the return value from another.
    + CHAINING Remember string methods? `“i love ruby”.upcase.reverse`
      + The `reverse` method depends on the return value of the `upcase` method. Example:
```ruby
def say_hello
  puts “hello!”
end 

say_hello.upcase
```
ERROR! This doesn’t work! Why do we get this error message: `undefined method \'upcase\' for nil:NilClass`? Because `puts` returns `nil`. How might we make this work? 
+ Have students complete the [Flyover Lab](https://github.com/learn-co-curriculum/hs-ruby-2-flyover-lab)

ARGUMENTS
+ SAY HELLO METHOD: To `say_hello` to each person in the class we might have to do something like this:
```ruby
def hello_victoria
  “Hello, Victoria!”
end

def hello_danny
  “Hello, Danny!”
end

def hello_lyel
  “Hello, Lyel!”
end
```
+ This is ANNOYING AND REPETITIVE and not D.R.Y. code (D.R.Y. == Don't Repeat Yourself). Is there a better way to write this? Yes!
+ Arguments let us feed information into a method:
```ruby
def say_name(name) 
  puts “Hello #{name}!” 
end
```
+ HOW TO CALL IT: `say_name(“Vanessa”)`, `say_name(“Victoria”)`
  + Note that, in this case, the argument has to be a string.

+ Everyone open up Sublime and write out this method and try calling it with different names.

MULTIPLE ARGUMENTS AND DIFF DATA TYPES
Example 1:
```ruby
def many_pets(species, number)
  “I love #{species}! I have #{number}!”
end

puts many_pets(“cats”, 5)
```
Example 2:
```ruby
def addition(number_1, number_1)
  number_1 + number_2
end

puts addition(2, 3)
```
+ Have students work on the [Parrot Lab](https://github.com/learn-co-curriculum/hs-ruby-2-parrot-lab)

DEFAULT VALUES
```ruby
def say_name(name = ”Programmer”) 
  puts “Hello, #{name}!”
end
```
+ What happens when you call it with no arguments?
+ Have students work on the [meal choice mini-lab](https://github.com/learn-co-curriculum/hs-ruby-2-meal-choice-lab)

WHY DO WE NEED ARGUMENTS? SCOPE!
Can’t we do this?:
```ruby
name = “Joe”

def say_hello
  puts “hello #{name}”
end

puts say_hello
```
+ Run the file. You get an error...
  + “Undefined local variable or method ‘name'”
  + Method doesn't know `name` because it is outside the method territory.
+ Draw circles on the board. The big circle is the program. The small circle is the method. The method is only aware of what is in the small circle.
+ `name` is outside the scope of the method, so it's not visible inside the method.

+ Define `name` INSIDE the method:
```ruby
name = “Joe”

def say_hello
  name = “Bob”
  puts “hello #{name}”
end
```
+ Which name gets printed out when the method is called? Bob.
+ ADD `puts “hello #{name}”` outside of the method. What do you think will be printed to the screen?:
```ruby
name = “Joe”

def say_hello
  name = “Bob”
  puts “hello #{name}”
end

say_hello
puts “hello #{name}”
```
+ Why does it print hello to both people? Because of SCOPE. 
+ Remember to use arguments to send variables into a method, otherwise the method won't know what you're talking about if they're defined outside the method.

### Conclusion / So What?
+ If variables and data are the nouns, then methods are the verbs of programming. These are the actions that get called on objects, like strings or integers. Understanding the relationship between objects and methods is very important as we make our journey towards fully implementing object orientation in Ruby. Essentially, everything is an object in Ruby and, as such, can have methods called on it. This is the meat and potatoes of programming in Ruby, so it's imperative to understand methods.

### Hints and Hurdles
+ Students might need clarification on the difference between passing in an argument to a method and getting input by calling `gets` from within the method.