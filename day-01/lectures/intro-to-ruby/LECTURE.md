# Unit 1: Introduction to Ruby - Full Lecture

## Objective
***Students will be able to use ruby's basic data types to make a simple command line application that manipulates data.***
## SWABTS

+ GENERAL RUBY ‐ explain that all programs are just lines of text read by a computer
+ GENERAL RUBY ‐ demonstrate that ruby programs read top to bottom
+ GENERAL RUBY ‐ differentiate between data and key words
+ STRINGS ‐ explain what a string is and why it's used
+ STRINGS ‐ create strings using double quotes
+ STRINGS concatenate two strings using the +
+ STRINGS ‐ use common string methods
+ PUTS ‐ Explain what putsing is and what it's used for
+ INT ‐ explain what an integer is and why it's used
+ INT ‐ use common mathematical operations with integers
+ INT ‐ understand that ruby rounds down when doing math with integers
+ INT ‐ use typical methods like to_f and to_s to mutate integers
+ FLT ‐ explain what a float is and why it's used
+ FLT ‐ understand that math with floats produces floats and math with integers produces integers
+ FLT ‐ use typical methods like to_i and to_s to mutate float
+ FLT ‐ use common mathematical operations on floats
+ STRINGS/VARIABLES ‐ interpolate a variable or a method within a string
+ VAR ‐ use a variable in place of a piece of data
+ VAR ‐ assign integers to variables
+ VAR ‐ assign floats to variables
+ VAR ‐ reassign the value of a variable
+ GETS ‐ take in user input using the gets method
+ VAR ‐ use correct syntax in naming variables
+ GENERAL RUBY ‐ predict that the effect of text in ruby that is not data or a key word will throw an error
+ GENERAL RUBY ‐ explain that an error will stop the execution of ruby code


## Motivation
+ Introduce Ruby with drone demonstration!! WOOHOO RUBY IS SO COOL
+ Ruby is a backend programming language that is typically used to build web applications.
+ Explain backend with example of website vs. web application. A static site for a pizza parlor shows the same info to everyone who visits - telephone number, location, etc. - but when you log into a site like Facebook you get a unique experience. It knows who you are and who your friends are. It also lets you, and only, connect to new friends, upload photos, update your status, etc. A backend is what makes this possible.
+ Ruby is an awesome backend language because easy to read, easy to learn, and there are a ton of resources available
+ by the end of this lesson you will be able to build a small program that takes in input and gives you an output

## Lesson Plan
+ All programs are just lines of text read by a computer. We’re going to create a ruby file, which is just a file written in a text editor with the file extension `.rb`.
+ Make sure all students have a `development` directory 
    + `cd desktop`
    + `mkdir development`
    + `cd development`
+ now let’s make a ruby file `touch first_app.rb` and open it in sublime text 2, which is just a text editor like Text Edit. `subl first_app.rb`
+ This empty text file is where we’re going to write our code that the program will execute later. We’re just going to be writing instructions for the computer to know what we want it to do, and then later we can tell it to actually follow the instructions.
+ `puts “hello world”`
    + every programmer starts with a program that outputs hello world. congratulations, you’re all developers now. WOOO CLAP!
    + We have two important pieces to keep in mind - data and key words. All programs are made up of these two things. In this example, puts is a key word and “hello world” is a piece of data called a string
    + what is data? (ask class for their thoughts). The internet is entirely made up of data and websites give context for that data. Fandango is a website for movie information, but without knowing what Fandango is and does, it’s just a bunch of random addresses, names, and times on the screen. That’s data and Fandango gives context for it.
+ What is a string? Strings are a piece of data denoted by double quotes. A string can hold any type of character, letters, numbers, spaces, and all special characters like ***!!!&&&. It’s used to hold information in a sentence-like format. We have to put the double quotes for the computer to treat the sentence as data. As people, we look at words written and automatically know that they are words to be read and contain information. Computers are stupid and have to be told explicitly what they are. ***(Pause for students to explain to a partner what a string is)***
+ And `puts`? `Puts` is an action built into Ruby that tells the computer to print out your piece of data to the screen. It’s telling the computer, show this information to my user. 
+ Now we’ve written the instructions, let’s run them. In terminal, from inside your development directory, type `ruby first_app.rb`. The ruby command tells your computer to execute this ruby file. (pause to let students run the file.)
+ ***Let students puts another sentence of their choice.***
+ What do you think this will do: `puts “my name is” + “insert_your_name-here”`
    + this is called string concatenation. We’re just adding strings together
    + see if they notice the missing space, and what that does. can reinforce that spaces are just characters in a string
+ A string is just a type of data that has some built in methods. A method is just a set of actions. 
    + `.length`
    + `.reverse`
    + `.upcase` `.downcase` `.swapcase`
    + `.capitalize`
+ You can even chain methods together: `“hello world”.upcase.reverse.capitalize`
+ ***BREAK FOR STRING LAB***
+ so what does: puts `“1” + “1”` give us? That’s definitely not the correct answer, so how do we do math in ruby? We need integers! integers are another data type in ruby.
+ what is an integer? ask students it’s just a whole number
    + `puts 1 + 1`
    + `puts 10 - 1`
    + `puts 10 * 10`
    + `puts 100 / 2`
    + `puts 100/3` -- why do we get 33? math with integers produces integers and ruby typically rounds down when doing math with integers
    + PEMDAS applies
+ ***Let students do math.***
+ so how do we get decimals? In Ruby (and programming in general) they’re called floats. A math problem with one float in it will produce a float
    + puts `100 / 3.0`
+ What happens if we do `“100” + 100?` We get an error because they’re different data types. Ruby won't let us add an integer to a string
    + We can convert  data types with methods called `to_i`, `to_f`, and `to_s`
        + `puts “100”.to_f`
        + `puts “10”.to_i`
        + `puts 100.00.to_i`
+ ***Let students do math with floats and convert diff data types in pairs.***
+ We’re using puts here so that we can see the output of the math problem, but what would happen if we left it off? (run same problems without puts). Notice we don’t see the answers. Ruby still did the math, but we didn’t tell it to puts the answer, so we don’t see it. How can we prove it?
+ VARIABLES! Who here has taken algebra before? ***Ask students what a variable is.*** We use variables in programming to store pieces of data. Variable names contain all lowercase letters. 
    + `a = 1`
    + `b = 2`
    + `puts a + b`
+ Variables can store all types of data, including strings
    + `name = “Vanessa”`
    + `puts name`
    + notice we’re not typing `puts name = “vanessa”` but Ruby is actually doing that variable assignment. It’s doing it behind the scenes so when we type puts name, it gives us “Vanessa”
    + ***Students create 3 variables: 1 with first name, 1 with last name, 1 with age***
+ Variable reassignment: What happens if we do `name = “danny” puts name`? We reassigned the value of the variable
+ We can’t have spaces in our variable names. what happens if we did?:`last name = “danny”`
    + error! ruby doesn’t know what ‘last’ is. It’s not data, it’s not a keyword. It doesn’t know what it is, so it throws an error. Notice the error stopped the execution of our program. 
    + ERRORS AREN’T BAD!!!!! they’re breadcrumbs to your problem. Ruby is telling us exactly what part of our code it doesn’t understand.
+ How can I use those variables?
    + `puts “My name is “ + name +  “ I am ” +  age.to_s + “ old”`
    + ***students do it too***
    + ***variable interactive practice***
+ There has to be an easier way to do this. That’s a lot of plus signs and keeping track of spaces..interpolation to the rescue!
    + `“My name is #{name} #{last}. I am #{age} old.”`
    + interpolation is denoted with the hashtag and curly braces. Between the two curly braces, our computer knows to execute ruby code. it will actually output the value stored in the variables name, last, and age instead of printing out the words name, last and age.
+ We said at the start we were going to make a little program by the end of this lesson. Programs usually take in information, do something to it, and then output that mutated information. We’ve learned how to do something to information, and how to output it, but how do we take it in? A little method built into Ruby called gets
    + demo a program: `puts “what is your name” gets`
    + notice terminal hangs to let us type in input, but then it doesn’t do anything with it. we need to be able to persist/store our input. ***What have we learned about that lets us store data?*** variables!! `name = gets puts “hello #{name}”`

## Conclusion 
Web applications follow and input-output pattern. You input a comment to the funny cat meme your friend put on Facebook, and it's outputted back to you in Facebook's pretty format. This structure is the basis of every application, and you just learned how it works.

## Hints and Hurdles
+ `gets` takes in all information as a string and with the newline-character at the end of it