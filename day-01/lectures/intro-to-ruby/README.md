# DAY-01 Introduction to Ruby 

_A full lecture is available [here](LECTURE.md)_

## SWBATs
+ Use Ruby's basic data types to make a simple command line application that manipulates data.

## Motivation / Why Should You Care?

+ Ruby is a backend programming language that can be used to build web applications. A web application is different from a website. A website is static. Think about the site for a pizza parlor. It will show the same info to everyone who visits: telephone number, location, menu. The content never changes. A web application has different content depending on the user. Facebook is a web application. When you log in, you get a unique experience. It knows who you are and who your friends are. It also lets you, and only you, connect to new friends, upload photos, update your status, etc. A "backend" is what makes this possible. The "backend" of an application is hooked into a database that keeps track of all the unique content and information for each user. And Ruby is a language that we use to write the backend. Today we'll build a small program that takes in input from the user and gives an output.

## Lesson Plan
CREATE YOUR FIRST PROGRAM
+ Programs = lines of text read by a computer. A Ruby program is a text file w/ extension ‘.rb'.
+ Create development directory on Desktop:
```bash
cd desktop
mkdir development
cd development
```
+ Create Ruby file:
```bash
touch first_app.rb
# open it in Sublime
subl first_app.rb
```
+ We'll be writing instructions for the computer to know what we want it to do, and then later tell the computer to execute instructions.
`puts "Hello, world!"`
+ Programmers 1st program. You're all developers now!

DATA
+ `puts "Hello, world!"` = data (`"Hello, world!"`) and key words (`puts`). All programs are made up of these two things.
+ What is data? The internet is entirely made up of data and websites give context for that data. Example: yelp.com

+ What is a String?
  + String is a piece of data denoted by double quotes. 
  + A string can hold any type of character, letters, numbers, spaces, and all special characters like ***!!!&&&. (Like a text message.)
  +  We have to put the double quotes because computers are stupid and have to be told explicitly when we are creating a string.

PUTS
+ Puts is an action built into Ruby that tells the computer to print out your piece of data to the terminal.

RUN CODE
+ From development directory, type `ruby first_app.rb`. The `ruby` bash command tells your computer to execute this Ruby file.
+ Have students `puts` another sentence of their choice.

STRING CONCATENATION
+ `puts "my name is" + "Steph"` What will it do?
+ Just adding strings together
+ Missing space. Space = another character

METHODS
+ A method is just a set of actions. Strings have some built-in methods that Ruby gives you like: `.length`, `.reverse`, `.upcase`, `.downcase`, `.swapcase`, `.capitalize`.
+ Chain methods together: `"hello world".upcase.reverse.capitalize `
+ Have students use methods on their own names.

BREAK FOR [INTERACTIVE PRACTICE I: STRINGS](http://GitHub.com/learn-co-curriculum/hs-strings-mini-lab)

MATH
+ `puts "1" + "1"`: What does that give us? 
+ Integers - another data type. What are integers?
```ruby
puts 1 + 1
puts 10 - 1
puts 10 * 10
puts 100 / 2
```
+ `puts 100/3`: why do we get 33? Math with integers produces integers! and Ruby rounds down when doing math with integers. PEMDAS applies.
+ Let students do math in pairs.
+ Decimals? = FLOATS In Ruby (and programming in general).
+ `puts 100 / 3.0`. If you include one float in an equation, the result is a float.
+ `"100" + 100`: What happens? 
+  We get an error because they're different data types. 

CONVERT DATA TYPES 
+ use methods called `to_i`, `to_f`, and `to_s`
```ruby
puts "100".to_f
puts "10".to_i
puts 100.00.to_i
```

VARIABLES
+ We use `puts` to see output. What if we leave it off? Notice we don't see the answers. Ruby still did the math, but we don't see it. How can we prove it?

+ VARIABLES! Who has taken algebra? What is a variable?
+ Variables store pieces of data. Variable names are snake_cased. They contain all lowercase letters and multiple words are connected with an underscore.
```ruby
a = 1
b = 2
puts a + b
```
+ Variables can store all types of data, including strings:
```ruby
name = "Vanessa"
puts name
```
  + notice we're not typing `puts name = "vanessa"`
  + Students create 3 variables: 1 with first name, 1 with last name, 1 with age.

VARIABLE REASSIGNMENT
```ruby
name = "danny"
name = "victoria"
puts name 
```
+ What happens? We reassigned the value of the variable.

NAMING VARIABLES
+ We can't have spaces in our variable names.
  + `last name = "coleman"` What happens?
  + Error! Ruby doesn't know what `last` is. It's not data, it's not a keyword.
  + Errors = breadcrumbs to your problem. Ruby is telling us exactly what part of our code it doesn't understand.

USING VARIABLES
+ How can I use those variables?
`puts "My name is " + name +  " I am " +  age.to_s + " old"`

BREAK FOR [INTERACTIVE PRACTICE II: VARIABLES](https://GitHub.com/learn-co-curriculum/hs-variables-mini-lab)

STRING INTERPOLATION
+ An easier way than adding strings and variables. That's a lot of plus signs and keeping track of spaces.
+ Allows executable Ruby code to appear within a string.
`"My name is #{name} #{last}. I am #{age} old."`
+ Syntax = hashtag and curly braces. Between the two curly braces, our computer knows to execute Ruby code. It outputs the value stored in the variables `name`, `last`, and `age`.

MAKE A PROGRAM
+ Programs usually take in information, do something to it, and then output that mutated info. How do we take data in? The `gets` method.
```ruby
puts "what is your name" 
gets
```
+ Terminal hangs to let us type in input, but doesn't do anything with it. We need to persist/store our input. What have we learned about that lets us store data? Variables! 
```ruby
name = gets 
puts "hello #{name}"
```

## Conclusion / So What?
+ The apps you use on your phone and web browsers are all built on the all-important concept of input - output. They take some input from you, like 140 characters for your latest Tweet, and then output something back to you, like the addition of that Tweet to your timeline. While our input/output application is much simpler than a huge application like Twitter, the same principles are in play. 

## Hints and Hurdles
+ To show students how strings can be comprised of all different kinds of characters, you can use the example of `"ke$ha"`. Students always chuckle at this one.
