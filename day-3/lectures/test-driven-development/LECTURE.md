## Test-Driven Development - Full Lecture

### SWBATS 
***Students will be able to understand the purpose of and use Test Driven Development to solve challenges.***

+ GEMS - install a gem
+ GEMS - explain what a ruby gem is
+ TDD - understand the core concepts of TDD
+ TDD - read and understand rspec tests

### Motivation
So far we’ve been checking our work by manually testing our programs (show). But what if it’s a huge program that many developers have been working on? Manual testing becomes very hard! We’re going to be learning about test driven development with a program called RSPEC. What is Test Driven Development, you ask? ***In a nutshell, it’s a way that developers work to build high quality programs and prevent errors/bugs from developing in the program (FLESH OUT - many devs working on single codebase. Changing one small thing can have unforeseen effects, industry standard).*** Developers first write ***tests*** that check to make sure that their code is doing what it’s supposed to be doing. For example, I write a test that says when the ‘triple’ method is called on a number, the number should be three times the amount of the argument. After these are written, they can use the failures that the tests give them to guide their writing of the code. In this course, we’re not going to be writing tests, but instead we’re going to be using labs that have tests written in them and we have to get the tests to pass by writing passing code.

### Lesson Plan
+ We’re going to start by looking at a set of code that has tests built in to it already. I’m going to clone a git repository that has rspec tests built in to it. You should clone it too. [Students Clone this- linked in Learn](https://github.com/learn-co-curriculum/hs-tdd-structure-code-along)
+ Once you’ve done this, cd in to the directory. You’ll notice a directory called `spec` with some files in it. CD in there. Our tests are written in a file that ends in `spec.rb`. Open up `my_code_spec.rb`, which is a set of tests for `my_code.rb`. Notice how the naming is standard - the tests are written in a file with `_spec.rb` added on to the end of the name of the file that it’s running tests on.
+ Open up `my_code_spec.rb` and we can look at the tests that we are going to have to solve.
+ (Walk through the basic syntax of the rspec tests - basically `describe` and `it` sections just give context, and `expect` is the line that shows what the test runs and what it is expecting. Rspec is a DSL which means that it uses language that has been built on top of ruby. (ie describe is not a keyword in ruby)
+ We can look at the tests when we get confused to see what the test is expecting, but for the labs we do it’s generally sufficient to run the tests from your terminal. 
+ But ‘HOW DO I RUN THE TESTS FROM MY TERMINAL?’, you ask. Great question. CD back to the main directory of the terminal and just type `rspec`
+ For many of you this won’t work. That’s because you don’t have rspec installed. luckily ruby comes with a program called rvm that lets you download gems very easily. A gem is just a simple piece of code that someone else wrote (so you don’t have to) that gets integrated with your code when you call it using ‘require’ Run `gem install rspec` and then when it’s installed run rspec again.
+ ***You get failing tests. Failing tests are good.*** They are breadcrumbs. They tell us what we should be working on. If you start working on a project and it doesn’t have failing tests, that is a red flag. (Make sure to emphasize this!!!). 
+ Read the first test and then make changes based on the failure messages you receive (at first that there is no method, then that the method returns nil, etc) until the first test is green.
+ Second test should be done as a class.
+ Third and fourth tests should be done in partners, and then shared with the class.

### Conclusion
+ Rspec is incredibly valuable because it lets us test all our code at once. When apps get really big and complex it's easy to make a change to one area, that could unexpectedly break another. Rspec would catch that mistake before you sent a bug live into your code.


### Hints and Hurdles
+ Rspec actually runs your methods for you. Code will break if you call your methods inside the actual file with code.