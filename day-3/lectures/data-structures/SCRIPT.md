### SWABTS
***Students will be able use and manipulate Ruby’s core data structures (Arrays and
Hashes).***

+ ARR - explain what an array is and why it's used
+ ARR - create an array
+ ARR - return a specific value from an array using it's index
+ ARR - add, delete and modify items in an array
+ ARR - mutate arrays using methods available to all arrays
+ ARR - iterate through arrays using the each method
+ ARR - use .split to change a string into an array
+ VAR - assign various data types and structures to variables
+ HASH - explain what a hash is and why it's used
+ HASH - create a hash
+ HASH - return a specific value from a hash using it's key
+ HASH - mutate hashes using methods available to all hashes
+ HASH - add delete and modify key-value pairs in a hash
+ HASH - explain what a symbol is and why it's used
+ HASH - use symbols as keys in hashes
+ HASH - iterate through hashes using the each, each_key, and each_value methods
+ HASH - parse through nested hashes and arrays to pull out specific pieces data

### Motivation
+ What are things that we make lists of? ***(Prompt students, on board make a list of the lists given: groceries, names, countries, places to go, tasks, etc).***
+ We’re going to be learning about Ruby’s main data structures: Arrays and Hashes. They are awesome because they let us store data in unique ways that make it easy to manipulate and access. Essentially hashes and arrays are two different types of list that can be used to store data like strings, floats, and integers, (and symbols, booleans).
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


+ ***HASHES*** - Hashes are the second data type we’re going to talk about. (Use in real life, show a screenshot of a hash from an api call). Hashes give context to data (a bunch of birthdays without names means nothing), it’s a additional data dimension. They’re really similar to arrays in that they are like two column tables. The difference is that for an array the left side of the column is the index, for hashes there is no numbered index, but there is another piece of data on the left side of the table, called the key.


```ruby
VALUE
“Danny”
“December 3”
“Victoria”
“December 2”
“Vanessa”
September 16”
```

+ We use hashes when we have a piece of data that should relate to another piece of data. We call this a key-value pair. The key in a hash has to be unique, because it’s how we access values from the hash. We write a hash like this:
+ `names_hash = { “Danny” => “December 3”}` etc…
+ Now we don’t have indices, but we have keys. Given what we know about arrays, how do you think we’d access a value from a hash?
	+ 	`names_hash[“Danny”]` returns “December 3”
+ Knowing what we know about arrays, how would we change a key value pair’s value?
	+ `names_hash[“Victoria”]` = “December 1”
+ To add a new key-value pair we use the same syntax:
	`names_hash[“Lyel”] = “April 1st”`
+ To delete we use `names_hash.delete(“Lyel”)` to remove the pair.
+ Sometimes we use a data type called a symbol for the key in a hash. Symbols are unique, which means that they can only exist once in ruby code, which is convenient because keys in a hash are unique. (CS - one to one/many relationships?) A symbol is made up of a colon (:) and a set of characters. ***Let’s create a new hash, but use symbols instead of strings for the keys.***
+ Methods to look at:
	+ `.values`, `.keys`, `.length`, `.include?`
+ Let’s learn about iteration in hashes, just like we did for arrays. For arrays we only wanted to loop through and do something to the value, but since a hash has a pair of data, we can use them both with .each. Say I want to print a string for each k-v pair that reads: `“#{name} has a birthday on #{birth_date}.`
+ We do this with the `.each` method:

```ruby
names_hash.each do |key, value|
		puts “#{key} has a birthday on #{value}.
	end
```

+ We can replace the key and value placeholders with anything we want, these are just placeholders. Just remember that the first one is for the key and the second is always representing the value.
+ ***Iteration with hashes Mini-Lab***
+ Hashes and Arrays can occur inside of other hashes and arrays. How do we pull individual items out if this is the case?
	+ `salad_ingredients =[[“romaine”, “kale”, “spring mix”],[“tomatoes”, “avocado”, “beets”],[“vinaigrette”, “ranch”, “ginger-soy”]]`
	+ ***Prompt students through finding individual items.***
	+ This data would be much better represented as a hash (explain why). ***Can you help me convert it?***

```ruby
salad_ingredients ={ :lettuce => [“romaine”, “kale”, “spring mix”],
:veggie => [“tomatoes”, “avocado”, “beets”],
:dressing => [“vinagrette”, “ranch”, “ginger-soy”] }
```

+ Now how do I access “kale”?
+ ***Nested Hashes Mini-Lab***
+ Review methods, but adding in hashes and arrays.
	+ define a method that takes an array of numbers and returns a sum of these.
	+ define a method that takes a hash and outputs the key value pair with nice formatting.
	+ define a method that returns the first item from an array.

### Conclusion
Arrays and hashes are incredible important data structures that allow us organize our data into manageable chunks. You will literally never escape them

#### Hints and Hurdles 
+ Students confuse the `[]` notation for arrays and hashes with `()` used in method arguments.