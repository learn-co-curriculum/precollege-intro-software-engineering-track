## Unit 4: Ruby Control Flow - Lecture Notes

### SWBATs
+ Explain what an if statement is and why it’s used
+ Implement an if statemenet with 1, 2, and 3+ branches
+ Implement the comparison operators

### Motivation / Why Should You Care?
+ In the real world, we are always dealing with what-if situations. Your mom might say, "You can go out with your friends if you finish up all your homework, otherwise you have to stay in Saturday night." In programming, we anticipate similar hypothetical situations in our code. We use `if statements` to deal with different conditions that might arise. Sometimes there are multiple outcomes that can result in your code, so using `if statements` helps organize your code.
+ You've all seen if/then statements in math class, the same concept applies in all programming languages, it's just applied differently.

### Lesson Plan
+ `if statement` syntax
```ruby
packing_list = ["socks", "sleeping bag", "trail mix"]

if packing_list.includes?("sleeping bag")
    puts "I have a place to sleep!"
end
```
  + Explain that Ruby will read the line and evaluate the if statement to either `true` and `false`
+ We can use the data types `true` and `false`:
```ruby
if true
    puts "this will always execute"
end
```
```ruby
if false
    puts "we’ll never see this"
else
    puts "we’ll always see this"
end
```
+ What if we wanted something to happen if the statement from above was false? 
```ruby
packing_list = [socks, "matches", "trail mix"]

	if packing_list.includes?("sleeping bag")
		puts "I have a place to sleep!"
	else 
		puts "I need to pack a sleeping bag"
	end
```
+ What if we had more conditions? 3 or more branches, we use the keyword `elsif`.
```ruby
packing_list = ["socks", "matches", "trail mix"]

	if packing_list.includes?("sleeping bag") && packing_list.includes?("blanket")
		puts "I’ll be warm"
	elsif packing_list.includes?("sleeping bag") || packing_list.includes?("blanket")
		puts "I have a place to sleep!"
	else
		puts "I have nowhere to sleep"
	end
```
+ `&&` means `and`  - both sides true for the statement to be true
+ `||` means `or` - either side true than the statement is true
+ Students implement a 3 branch if statement with neither blanket nor sleeping bag, with just blanket, and with both. Have them write down what statement would get printed out in all three situations.
+ Explain other comparison operators: `>, <, >=, <=, ==`

### Conclusion / So What?
+ When we're building complex applications, we have to anticipate different outcomes that could result from the way a user interacts with the application. For example, what if you have a login page where a user has to enter their username and password. You can't expect that every user will write their username and password in correctly. What if they forget their password and enter the wrong thing? What if the user submits the form without entering anything? What if the username isn't in the database? You need to account for these what-if situations by anticipating them with `if statements`. Your users will appreciate how fool-proof your program is. 

### Hints and Hurdles
+ A common mistake beginner programmers make is assuming multiple if statements are equal to using `elsif` and `else`. An `if statement` only allows for two possibilities at a time. A statement with `elsif` allows for three or more possibilities. This gives you more options, but you can only chose one out of the bunch.
+ Pretty much all students are familiar with If/Then statements from math class - same concept in programming just without the explicit "then"