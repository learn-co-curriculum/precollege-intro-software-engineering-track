## Unit 3: Ruby Arrays - Full Lecture

### SWABTS
***Students will be able use and manipulate Ruby arrays.***

+ Explain what an array is and why it's used
+ Create an array
+ Return a specific value from an array using it's index
+ Add, delete and modify items in an array
+ Mutate arrays using methods available to all arrays
+ Iterate through arrays using the each method
+ Use .split to change a string into an array
+ Assign various an array to a variable

### Motivation
+ What are things that we make lists of? ***(Prompt students, on board make a list of the lists given: groceries, names, countries, places to go, tasks, etc).***
+ We’re going to be learning about Ruby’s other main data structure - Hashes. They are awesome because they let us store data in unique ways that make it easy to manipulate and access. Essentially hashes and arrays are two different types of list that can be used to store data like strings, floats, and integers, (and symbols, booleans).
+ Imagine a string with an item as being an individual post-it note. If we have 20 items, we’d need 20 different post it notes. Instead, with an array, we can have all 20 of those to-dos on one post it note. Pretty sweet!
+ Or maybe sheets of paper floating around - using an array is like putting them in a binder?

### Lesson Plan 
***ARRAYS*** - Let’s start by learning about arrays. We’ll do this by making our own arrays.

+ Think about an array as an ordered list that can be visualized as a two-column table where the left column is the index (or the order) and the right column is the thing you’re listing (Draw on board, using one of the students’ examples):

***INDEX***

```ruby
NAME
0
Danny
1
Lyel
2
Victoria
3
Vanessa
```

+ Notice that the index starts at 0. This is a quirk about data structures in computer science that you just have to memorize. The first item in an array is always 0, and it increments by one.
+ So how do we translate this table into code?
[“Danny”, “Lyel”, “Victoria”, “Vanessa”]
Remember that the names are data so must be in quotes as strings.
We use square brackets to denote an array.
We don’t explicitly write the index anywhere. (show the index above each item on the board)
+ Great, we’ve made an array. Let’s go ahead and assign it to a variable so that whenever we call the variable names we have the array returned to us.
+ ***Model and then have students create a new file in their development directories to hold their array practice code. Have students create their own array of their choice and assign it to a variable. Have students turn to partners and check with each other.***
+ Great. We’ve created the array. Now what if I just want to get out one item from the array instead of the whole thing. For example, What if I want to get the third item listed in my array?
+ We access items in an array using the brackets and the index of the thing you want.
+ ***`names[3]` will give me what?*** (the fourth). how do I get the third item?
So what if we want to change one of the items in the array? Any thoughts on how we can reassign/change an item?
+ `names[2] = “Joe”` will change the third item in the array to Joe. (Model this)
+ We can also add and remove items from an array. Arrays actually have methods built in to them. Remember that methods are just a set of instructions.
  + `names.push(“Alfred”)` will add an item with the contents of the argument to the end of the array it is called on. You can also use `<<`.
  + `names.pop` will remove the last item in an array.
  + `names.delete_at(3)` will delete the item at index 3.
  + `names.insert(2, “Dan”)` will insert the item at the index you specify in the first argument.
+ Here are some other cool methods: .length, .reverse, .sample, .sort.
+ ***Mini-Lab: Manipulating arrays (start with array and then have 10 instructions, what does array look like at the end?)***
+ ***Answer: `["Peru", "Laos", "Chad", "Cuba", "Togo", "Iraq", "Iran", "Mali", "Oman", "Fiji"]`*** 

+ Let’s make a new array but use numbers now. Get an example set from a student and make an integer based array. Ask a few review questions (add a number? index? etc…)
+ Ok, what if we want to do something to each number. Like add one to each number. We could do it manually: + `numbers[0] = numbers[0] +1`, etc. We can also use a special method called `.each` that lets us take the same action on all of the items in an array.

```ruby
numbers.each do |number|
  number + 1
end
```

+ Explain the breakdown of the each method
  + needs a `do` and `end`
  + content in the |pipes| is the item from the array that is being iterated through - it’s sort of like a placeholder, doesn’t really matter what it’s called but try to name it sensibly.
  + code is inside the do and end - this is what happens to each item.
+ Let’s go back to our names example. ***Model using .each to output the names with “`Our class has a student named #{name}`”***
+ ***Mini-Lab - Iteration through arrays***

### Conclusion
Arrays are incredible important data structures that allow us organize our data into manageable chunks. You will literally never escape them

#### Hints and Hurdles 
+ Students confuse the `[]` notation for arrays and hashes with `()` used in method arguments.