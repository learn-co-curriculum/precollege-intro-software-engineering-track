# Ruby Control Flow - Full Lecture

## Objective
***Students will be able to use if-statements to automatically control the flow of their programs***

## SWBATS

+ Explain what an if statement is and why it’s used
+ Implement an if state with 1, 2, and 3+ branches
+ Implement the comparison operators


## Motivation
Let’s say we want our code to be event based so that an input triggers one flow and one specific output, as opposed to a different input, so that we’re not always manually calling all of our methods. For example, when the time is 12am, we get tired and go to bed. When the time is 10am, we’re awake.

What if we’re going camping, and we need to make a list of everything to pack. We can create an array of our packing list. When you’re packing for camping, your packing list is really important. If you forget a raincoat and it rains, you’re going to be soaking. If you forget matches, you can’t cook any food over a fire. If you pack sunscreen, you won’t get sunburned. So how could we implement something like that in code? If statements! ***Has anyone used if statements in math? Can someone explain what it is in math?***

## Lesson Plan 
We have if statements in Ruby. They start with the keyword `if`, and end with the keyword  `end`
  ```ruby
  	packing_list = [“socks”, “sleeping bag”, “trail mix”]

  	if packing_list.includes?(“sleeping bag”)
  	    puts “I have a place to sleep!”
  	end
  ```

in IRB: demonstrate the .includes? method:

```ruby
  [1,2,3].includes?(2) #returns true
  [1,2,3].includes?(4) #returns false
```

+ true and false are boolean values, which is another data type
+ explain that ruby will read the line and evaluate the if statement to either true and false
+ true and false are considered “boolean values”
+ this if statement has one branch, just an if
+ ***Students create an array of their camping packing list and build out an if statement about something in it***
we can use the data types true and false:

```ruby
  if true
      puts “this will always execute”
  end

  if false
      puts “we’ll never see this”
  else
      puts “we’ll always see this”
  end
```

+ What if we wanted something to happen if the statement from above was false? 
```ruby
  packing_list = [“socks”, “matches”, “trail mix”]

	if packing_list.includes?(“sleeping bag”)
	    puts “I have a place to sleep!”
		else 
		    puts “I need to pack a sleeping bag”
	end
```
+ Notice we didn’t need to put anything after the `else`, it’s just the default. The if statement didn’t evaluate to true, so it automatically skips to the else and will execute that line. 
+ this has two branches
+ ***Students implement an if/else statement***
+ What if we had more conditions? 3+ branches, we use the keyword “elsif”
```ruby
packing_list = [“socks”, “matches”, “trail mix”]

	if packing_list.includes?(“sleeping bag”) && packing_list.includes?(“blanket”)
	    puts “I’ll be warm”
		elsif packing_list.includes?(“sleeping bag”) || packing_list.includes?(“blanket”)
		    puts “i have a place to sleep!”                       		else
    puts “I have nowhere to sleep”
	end
```
+ the `&&` is a comparison operator that means ‘and’. If both sides of the `&&` evaluates to true, then the entire statement evaluates to true. if one side evaluates to false, then the entire statement evaluates to false.  In this case, our list doesn’t include either, so both sides are false
+ the `||` is a comparison operator means or. If either side evaluates to true, the entire statement evaluates to true.
+ ***What would happen if we added “blanket” to our array?***
+ ***Students implement a 3 branch if statement with neither blanket or sleeping bag, with just blanket, and with both. Have them write down what statement would get printed out in all three situations.***
+ We’ve learned about two comparison operators so far, but there are more. ***What comparison operators have you used in math classes?***
+ We can use the same with Ruby >, <, >=, <=, ==

```ruby
  x = 5
  if x < 10
      puts “less than 10”
  end

  y = 20
  if y < 20
      puts “y is less than 20”
  elsif x > 100
      puts “x is greater than 100”
  elsif y >= 20 && x <=10 
      puts “y is greater than or equal to 20 and x is less than or equal to 10”
  elsif x == 5
      puts “x is 5”
  else
      “none of the above”
  end
```

+ `==` is a comparison for ‘equal to’. A single  `=` is used for variable assignment, == is used to check case equality.
+ ***Students implement an if statement with > and < operators***


## Conclusion 
+ An if statement allows us to trigger events based on specific conditions.
+ Ruby is a lazy interpreter, meaning it will evaluate the code associated with the first line of the if statement that evaluates to true.


## Hints and Hurdles
+ Students can struggle with the concept of boolean data types. That the word `true` in your program means the value true.