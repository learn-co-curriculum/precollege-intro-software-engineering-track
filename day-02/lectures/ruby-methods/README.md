# DAY-02 Ruby Methods

_A full lecture is available [here](LECTURE.md)_

## SWBATs
+ Look up pre-written Ruby methods, write their own methods, and understand the importance and function of scope and return values.

## Motivation / Why Should You Care?
+ Remember all that cool stuff we can do to a string, like `reverse` and `swapcase`? Those methods are part of Ruby's built-in methods. Coding becomes very powerful when you start to write your own methods. They allow you to invoke powerful tasks that you've defined yourself using just one word (the method call). 

## Lesson Plan
#####What are methods?
+ METHOD DEFINITION: A set of instructions that tells the computer to do something. You can write code once, and then re-use it as many times as you want.
+ There are PRE-WRITTEN METHODS for different data types. You can use `upcase` on a string but not on an integer or a float.
```ruby
"string".upcase
```
#####Method Chaining: How would you make the word "Ruby" appear in all caps and backwards?
```ruby
"string".upcase.reverse
```
####Our First Method!
+ If a method you want to use isn't prewritten, you can create your own.
 
#####Syntax: Show generic code to students. Walk them through the pieces.

######OPTIONAL: Prompt students to draw out method example on their whiteboards.
```ruby
def method_name
 your code goes here!
end
```
+ **Be Explicit:** You need to give really explicit instructions to a computer when you create a method.
+ Use pseudo code to write out a basic method.  
+ **Pseudo code** is a way for coders to write down what they want their code to do without having to worry about what the actual code will look like yet.
+ **Co-Teacher:** Write on board and 'call' `go_home` by having a student physically act out the `go_home` method. (Note: feel free to have fun with this one.)
  
```ruby
def go_home
 # close your computer
 # put it in your bag
 # do a jumping jack
 # stand up
 # walk out the door
end
```
######OPTIONAL: Prompt students at their tables to take 2-3 minutes to write out their own method in pseudo code for going to bed.

#####INTERACTIVE RUBY (IRB)
+ It's been really fun writing everything out in a file and then running that file to see what happens, but wouldn't it be nice if we could experiment without saving and re-running the file every time? 
+ Welcome to Interactive Ruby aka IRB!
+ IRB = ONLY Ruby. NO bash here.
+ We can run ruby in the terminal and use it as a playground for playing and experimenting with ruby.  
+ We would never write a full app in IRB because it can't save our code but it is useful for understanding methods. 

####Method With Ruby Code
```ruby
def hello_world
 "Hello, world!"
end
```
+ **Defining a method = the how/what** But we also need to CALL it for it to execute.
+ **Calling a method = the action**  You know how to ride a bike, but you must **_call_** `ride_bike` to do it.
+ To call a method, write the method name. 
+ Write `hello_world` in IRB and press enter to show the class.

**Return Value:** Always the result of the last line of code in a method.  
+ What is the last line in the method?    
+ IRB displays the return value with `=>`.
+ What is the return value?
+ How do we print out the return value in terminal when we call the method?
```ruby
  puts hello_world
```
<<<<<<< HEAD
+ SAVE AND RUN CODE. Nothing happens. Have the students discuss why.
+ DEFINING A METHOD = the HOW. But we also need to CALL it for it to execute.
  + BIKE EXAMPLE: You know how to ride a bike, but you must call `ride_bike` to do it. Like actually get on a bike and moving your legs on the pedals.
  + OPTIONAL DICTIONARY EXAMPLE: A dictionary contains the definitions of all the words, but we don't use these definition until we are actually saying the words or using them in a sentence.
+ HOW TO CALL A METHOD: Write the method name. Add `hello_world` call to the file and run it to show the class.
+ Write a few more methods with the class:
  1. How old will I be in 10 years?
  2. What is my name spelled backwards.
  3. Change all w's to v's.
+ Break and have students write and call methods in [Methods Practice Lab](https://GitHub.com/learn-co-curriculum/hs-ruby-2-methods-practice-lab)

RETURN VALUE
+ Always the result of the last line of code. Like a receipt. Why is the return value of this code `nil`?:
+ What is the return value of `puts`?  
+ The `puts` method is a **_special ruby method_** that adds a line break to whatever is printed in the terminal and its **_return value is nil_**.  Nil = NOTHING.  
+ What will the return value of `hello_world` be now?  Look closely!

```ruby
def hello_world 
 puts "Hello world!" 
end
```
+ `puts` JUST PRINTS TO SCREEN and returns NOTHING, or NIL. The last line of our program is calling the `puts` method. Let's look at another example:

```ruby
hello_world.upcase
```
+ **_Error!_** This doesn't work! Why do we get this error message: `undefined method \'upcase\' for nil:NilClass`? Because `puts` returns the value of `nil`.

```ruby
def hello_world 
puts "Hello world!" 
return "Hello world!"
end
hello_world.upcase
```
+ Now the return value is "Hello world!".
+ We don't actually need the word `return` because it is **implicit**.
+ Try deleting `"Hello world!"` and replacing it with `1 + 1`. What was the return value?
+ If a method is called inside of a method, the value of the inside value will become the return value of the outside method.  
+ If `puts` is called insided of another method, the other method will return a value of NIL.




#####Break and have students write and call methods in [Methods Practice Lab](https://GitHub.com/learn-co-curriculum/hs-ruby-2-methods-practice-lab) and [Flyover Lab](https://GitHub.com/learn-co-curriculum/hs-ruby-2-flyover-lab)

####Arguments
+ Say Hello Method: To `say_hello` to each person in the class we might have to do something like this:
```ruby
def hello_victoria
  "Hello, Victoria!"
end

def hello_danny
  "Hello, Danny!"
end

def hello_lyel
  "Hello, Lyel!"
end
```
+ This is ANNOYING AND REPETITIVE and not **_D.R.Y. code (D.R.Y. == Don't Repeat Yourself)_**. Is there a better way to write this? Yes!
+ **Arguments** let us feed information into a method:
```ruby
def say_name(name) 
  puts "Hello #{name}!" 
end
```
+ **Calling method with an argument**: `say_name("Vanessa")`, `say_name("Victoria")`
  + _Note that, in this case, the argument has to be a string._

######Prompt students to open up Nitrous and write out this method and try calling it with different names.

#####Mulitple Arguments and Different Data Types
Example 1:
```ruby
def many_pets(species, number)
  "I love #{species}! I have #{number}!"
end

puts many_pets("cats", 5)
```
Example 2:
```ruby
def addition(number_1, number_1)
  number_1 + number_2
end

puts addition(2, 3)
```

#####Default Values
```ruby
def say_name(name = "Programmer") 
  "Hello, #{name}!"
end
```
+ What happens when you call it with no arguments?
+ Have students work on the [meal choice mini-lab](https://GitHub.com/learn-co-curriculum/hs-ruby-2-meal-choice-lab)

#####Why do we need arguments? Scope!
Can't we do this?:
```ruby
name = "Joe"

def say_hello
  puts "hello #{name}"
end

puts say_hello
```
+ **_Error!_** This doesn't work! Why do we get this error message: `NameError: undefined local variable or method 'name'`
  + `say_hello` doesn't know `name` because it is outside the method's territory or **_scope_**.
  + **_Co-Teacher:_**  Draw circles on the board. The big circle is the program. The small circle is the method. The method is only aware of what is in the small circle.
+ `name` is outside the scope of the method, so it's not visible inside the method.

+ Define `name` INSIDE the method:
```ruby
name = "Joe"

def say_hello
  name = "Bob"
  puts "hello #{name}"
end
```
+ Which name gets printed out when the method is called? Bob.
+ ADD `puts "hello #{name}"` outside of the method. What do you think will be printed to the screen?:
```ruby
name = "Joe"

def say_hello
  name = "Bob"
  puts "hello #{name}"
end

say_hello
puts "hello #{name}"
```
+ Why does it print hello to both people? Because of SCOPE. 
+ Remember to use arguments to send variables into a method, otherwise the method won't know what you're talking about if they're defined outside the method.

#####Break and have students work on the [Parrot Lab](https://GitHub.com/learn-co-curriculum/hs-ruby-2-parrot-lab) and [meal choice mini-lab](https://GitHub.com/learn-co-curriculum/hs-ruby-2-meal-choice-lab)


## Conclusion / So What?
+ If variables and data are the nouns, then methods are the verbs of programming. These are the actions that get called on objects, like strings or integers. Understanding the relationship between objects and methods is very important as we make our journey towards fully implementing object orientation in Ruby. Essentially, everything is an object in Ruby and, as such, can have methods called on it. This is the meat and potatoes of programming in Ruby, so it's imperative to understand methods.

## Hints and Hurdles
+ Students might need clarification on the difference between passing in an argument to a method and getting input by calling `gets` from within the method.
