# DAY-03 Test-Driven Development

_A full lecture is available [here](LECTURE.md)_

## SWBATs
+ Understand the purpose of Test Driven Development and use it to solve challenges.

## Motivation / Why Should You Care?
+ So far we've been checking our work by manually testing our programs. Writing code and then running it in the terminal. But what if we're building a huge program that many developers have been working on? Manual testing becomes very hard! TDD is a way that developers work to build high quality programs and prevent errors and bugs from developing in the program Changing one small thing can have unforeseen effects, so developers first write tests that check to make sure that their code is doing what it's supposed to be doing. Then they write the code and get their tests to pass. In this course, we're not going to be writing tests, but instead we're going to be using labs that have tests written in them and we have to get the tests to pass by writing passing code.

## Lesson Plan
WHAT IS TDD?
+ It's a way that developers work to build high quality programs and prevent errors and bugs from developing in the program.

TDD CODE ALONG
+ Have students go to [TDD CODE ALONG](https://GitHub.com/learn-co-curriculum/hs-tdd-structure-code-along)
+ RSpec helps us with all our testing needs.
+ Students clone a GitHub repository that has RSpec tests in it (TDD Code Along).
+ `cd` into the directory. `cd` into `spec` directory. 
+ Our tests are written in a file that ends in `spec.rb`. 
+ Open `my_code_spec.rb`, which is a set of tests for `my_code.rb`. 
+ Naming is standard - the tests are written in a file with `_spec.rb` added on to the end of the name of the file that it's testing.

SYNTAX WALKTHROUGH
+ `describe` and `it` sections just give context, and `expect` is the line that shows the Ruby code that the test runs and what it is expecting.

WHAT IS RSPEC?
+ RSpec is a DSL
+ It uses a language that has been built on top of Ruby. (i.e. `describe` is not a keyword in ruby).

USING RSPEC
+ Two options: you can read actual test code in the `my_code_spec.rb` file OR run tests from terminal using `rspec` command.

FROM TERMINAL
+ How to run tests from the terminal?
+ `cd` to the main directory of the lab and just type `rspec`.
+ Doesn't work? You don't have RSpec installed! 
	+ A gem = code that someone else wrote (so you don't have to) that gets integrated with your code.
	+ Use a library so you don't have to reinvent the wheel. Power of open source.
	+ Run `gem install rspec` and when it's installed run `rspec` again.
+ You get ALL failing tests. Failing tests are good. They are breadcrumbs. If no failing tests, that is a red flag!
+ Read the first test and then make changes based on the failure messages you receive (ex: there is no method, the method returns nil, etc) until the first test is green.
+ Second test should be done as a class.
+ Third and fourth tests should be done in partners, and then shared with the class.

## Conclusion / So What?
+ Programming is very much about efficiency. We want our programs to run quickly, we want to write code that is DRY so we never repeat ourselves. TDD helps us be more efficient coders. Although it adds time to write tests, the tests are essential to stopping bugs and errors before they ever surface. And not only does TDD make a programmer's life easier, it helps ensure that the user has as problem-free an experience with the program as possible. Because TDD helps cut back on the number of bugs in a program, that means that the user is going to have a smooth and pleasant ride with your app. 

## Hints and Hurdles
+ If you have a personal experience with a bug that you battled against over many sleepless nights that could have been avoided with testing or TDD, share that with the students. They like to hear about real life programming experiences.
+ It's also helpful to explain the RSpec syntax in terms of nouns and verbs. `describe` is the noun and `it` is the verb, or action.
+ Review methods and method arguments before jumping into RSPEC.
+ Explicitly go over how RSPEC tests the code by calling the method.
+ Have students play with the code and call methods themselves after they get the tests to pass.
+ When students finished with walkthrough and Cool Ride, Bro Lab, challenge them to create their own tests. They seem to enjoy this.
+ Introduce the importance of refactoring - "make it work, make it right, make it fast" idea. Demo how you would refactor code to make it more 'right'.