# Ruby Loops - Full Lecture

## Objective
***Students will be familiar with loops and able to use them to run parts of their code more than once***

## SWBATS

+ Explain what a loop is and why it's used
+ Implement a while, until and for loop and be familiar with other types of loops
+ Implement a loop count with if/else to add control flow to their loops
+ Be able to identify a block and know how to use one in a loop


## Motivation
Looping gives an app a lot of power and flexibility. If we had to manually go through and manipulate every element one-by-one that would be repetetive.  

 What if I told you, you already know one of the most complex loops there is? Can anyone name something that goes through a collection of items one at a time. That's right the .each method is just a loop with a set number of cycles equal to the amount of elements in the array.

 We'll cover the `loop`, `times`, `while`, `until` and `for` tools today.  

## Lesson Plan 
We have loops in Ruby. Each starts with it's keyword followed by the `do` keyword and closed with an `end`. This syntax is called a block. 

##Blocks

Blocks ARE NOT methods, but in the case of loops they do outline a set of instructions that we want to run a bunch of times. The `do` and `end` keywords represent the borders of the code that we want to execute each time. 

##Loop

The simplest form of a loop is called, well, a loop! All it does is run the code between the do and the end over, and over and over and over...and you get the picture. Try running this line in IRB or in a test.rb Ruby file.

```
  loop do 
    puts "I will live forever!!!"
  end
```

 + Hit `Ctrl + C` to stop it (this may take a few moments). What just happened is called an infinite loop. 
 + This happened because we gave the computer instructions to print the sentence to the screen, but we never told it when to stop. 
 + All we need is one keyword to keep this from happening. It's called `break`.

```
  loop do 
    puts "I will live forever!!!"
    break
  end
```
+ As soon as Ruby reads that line it will stop the loop on that cycle. 
+ Now we have code that can either run our puts forever or we can run it just once. Neither of those is very useful to us. 
+ We need to add some logic in our loops to make it stop when we want it to. 

##While Loops

Using some conditions in our loops allows us to put limits on how many times our loop runs. 

Here's how it works: You're snacking on a bag of M&Ms -- let's say 30 come in each bag. Every time you reach into the bag you pull out 5 M&Ms and eat them. When the bag is empty, or there are 0 M&Ms you wouldn't keep reaching your land into the bag, right? You'd crumple up the bag and throw it away. Let's see how this would look in code. 

```
mm_count = 30

while m_&_m_count > 0
  puts "I have #{mm_count} M&Ms left"
  mm_count = mm_count - 5
end

#  └── I have 25 M&Ms left
#  └── I have 20 M&Ms left
#  └── I have 15 M&Ms left
#  └── I have 10 M&Ms left
#  └── I have 5 M&Ms left


```

+ Talk through the example in code-free English. "As long as my bag has more than 0 M&Ms in it I can keep on snacking."
+ As long as whatever statement is next to the `while` keyword is true, the block will run. 
+ Once it's not true the loop will stop going. Each time you stick your hand into the bag of M&Ms you're removing five pieces of candy. In code we change our m_&_m_count every cycle of the loop so it now is what it was on the last loop minus five. We call this decrementing.
+ If you were to magically add five M&Ms every time you stuck your hand in the bag that would be called incrementing. 

We use this count scenario a lot so there's also a shorthand that you might see for adding and subtracting from the count or total. It looks like this:

```
mm_count = 30

while mm_count > 0
  puts "I have #{mm_count} M&Ms left"
  mm_count -= 5
end

```
+ We can also put conditional if/else statements in our loops to add even more customization and options to our code. 

```
mm_count = 30

while mm_count >= 0
  
  if mm_count > 0 
    puts "I have #{mm_count} M&Ms left"
  else 
    puts "I'm out of M&Ms :("
  end
 mm_count -= 5
end

```

##Until Loops

Just like a while loop, but a slightly different way to phrase it. Let's look at our M&M example, but substitute a in the until keyword. 


```
mm_count = 30

until mm_count == 0
  puts "I have #{mm_count} M&Ms left"
  mm_count -= 5
end

```
+ In code-free English this might say, "As long as my bag doesn't have 0 M&Ms in it then I can keep eating delicious chocolate candies"
+ Things like this are why we love Ruby, you can say the same thing in a different way. 
+ Both ways will get you to the same result, just pick how you like to think about the logic and break down the problem. 


##For Loops

For loops are like a mini .each. You won't use them too much but just to walk through what's happening. The key to using a for loop is that you can only use it with a collection (we already know about the most common type of collection we use in Ruby -- arrays!!).

```
  for candy_type in ["sour patch kids", "m&ms", "snickers", "gummi worms"]
    puts "MOAR #{candy_type} plz"
  end
```
+ The variable candy_type in the for loop is just like what we'd put between the "pipes" if we used the each method instead. 

```
candy_array = ["sour patch kids", "m&ms", "snickers", "gummi worms"]
candy_array.each do |candy_type|
    puts "MOAR #{candy_type} plz"
end
```

##Times Loops

What if I told you...you don't have to deal with all this count stuff? Ruby has this awesome built in method that lets you set exactly how many TIMES you want something to happen. 

```
5.times do
  puts "Penguins like to jump off icebergs!"
end
```

+ The big takeaway from this syntax is that times is a method that must be called on an integer. 
+ You can use a variable, but that variable must represent an integer amount.  



## Conclusion 
+ Loops allow you to execute code over and over without writing the same code multiple times. 
+ Ruby will keep going unless you give it a true or false statement and tell it to stop.
+ Combined with flow control or conditionals loops give your Ruby programs lots of different options and power!

## Hints and Hurdles
+ Students can struggle with constructing the count or counter logic from scratch when first designing their own code. Reinforce that the counter is just a variable holding an integer. The counter is not something built into Ruby but a way for us to control our loops. 

