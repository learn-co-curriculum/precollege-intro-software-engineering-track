## Unit 3: Ruby Data Structures - Lecture Notes

### SWBATs
+ Use and manipulate Ruby’s core data structures of arrays and hashes.

### Motivation / Why Should You Care?
+ What are things that we make lists of? Let's say we wanted to make our own bucket list. Imagine each item on the bucket list is a string that we store on an individual post-it note. If we have 20 items, we’d need 20 different post-it notes. That's a lot of post-it notes to keep track of. Ruby makes this much easier for us with its two main data types: arrays and hashes. Hashes and arrays are two different types of lists that can be used to store data like strings, floats, and integers.

### Lesson Plan
ARRAYS
+ Array == an ordered list that can be visualized as a two-column table. Left column is the index and the right column is the thing you’re listing (Draw on board, using bucket list as an example):

| Index | Bucket List Item |
| --- | --- |
| 0 | Go sky diving | 
| 1 | Visit Antarctica |
| 2 | Climb Mt. Everest |

+ Notice that the index starts at 0. This is a quirk about data structures in computer science that you just have to memorize.
+ So how do we translate this table into code?
  + `[“Danny”, “Lyel”, “Victoria”, “Vanessa”]`
  + Remember that the names are data so must be in quotes as strings.
  + We use square brackets to denote an array.
  + We don’t explicitly write the index anywhere. (show the index above each item on the board)
+ Assign the array to a variable so that when we call the variable name, we have the array returned to us.
+ Have students create their own bucket list array of their choice and assign it to a variable.

ACCESSING ITEMS IN AN ARRAY
+ What if I want to get the third item listed in my array?
+ We access items in an array using the brackets and the index of the thing you want.
  + `names[3]` will give me what? (the fourth item). how do I get the third item?
  + 
ASSIGNING ITEMS
+ So what if we want to change one of the items in the array?
`names[2] = “Joe”` will re-assign the third item in the array to Joe.

ADD AND REMOVE ITEMS
+ We can also add and remove items from an array.
+ `names.push(“Alfred”)` will add an item with the contents of the argument to the end of the array it is called on. You can also use `<<` like so: `names << "Alfred"`.
+ `names.pop` will remove the last item in an array.
+ `names.delete_at(3)` will delete the item at index 3.
+ `names.insert(2, “Dan”)` will insert the item at the index you specify in the first argument.
+ Here are some other cool methods: .length, .reverse, .sample, .sort
+ [Mini-Lab: Manipulating arrays](https://github.com/learn-co-curriculum/hs-manipulating-arrays-mini-lab) (start with array and then have 10 instructions, what does array look like at the end?)
  + Answer: `["Peru", "Laos", "Chad", "Cuba", "Togo", "Iraq", "Iran", "Mali", "Oman", "Fiji"]`

ARRAY ITERATION
+ Let’s make a new array but use numbers now. Get an example set from a student and make an integer-based array. Ask a few review questions (add a number? index? etc.)
+ What if we want to do something to each number. Like add one to each number. We could do it manually: `numbers[0] = numbers[0] +1`, etc. We can also use a special method called `.each` that lets us take the same action on all of the items in an array.
```ruby
numbers_plus_one = 
		numbers.each do |number|
			number + 1
		end
```			            
+ Explain the breakdown of the each method
  + needs a `do` and `end`
  + content in the `|pipes|` is the item from the array that is being iterated through - it’s like a placeholder, doesn’t really matter what it’s called but try to name it sensibly.
  + code is inside the `do` and `end` - this is what happens to each item.
+ Let’s go back to our names example. Model using `.each` to output the names with `“Our class has a student named #{name}”`
+ [Mini-Lab - Iteration through arrays](https://github.com/learn-co-curriculum/hs-array-iteration-mini-lab)

HASHES
+ Hashes are the second data type we’re going to talk about. (Use in real life, show a screenshot of a hash from an API call.) + Hashes give context to data (a bunch of birthdays without names to associate them with mean nothing), it’s a additional data dimension. 
+ They are like two column tables. The difference is that for an array the left side of the column is the index, for hashes there is no numbered index, but there is another piece of data on the left side of the table, called the **key**.

| Key | Value |
| --- | --- |
| “Danny” | “December 3” | 
| “Victoria” | “December 2” |
| “Vanessa” | "September 16” |

+ We use hashes when we have a piece of data tied to another piece of data. We call this a key-value pair. The key in a hash has to be unique, because it’s how we access values from the hash. 
+ We write a hash like this: `names_hash = { “Danny” => “December 3”, “Victoria” => “December 2” }`

ACCESSING DATA IN A HASH
+ Now we don’t have indices, but we have keys. Given what we know about arrays, how do you think we’d access a value from a hash?
  + `names_hash[“Danny”]` returns `“December 3”`
+ Knowing what we know about arrays, how would we change a key-value pair’s value?
  + `names_hash[“Victoria”] = “December 1”`
+ To add a new key-value pair we use the same syntax:
  + `names_hash[“Lyel”] = “April 1st”`
+ To delete we use `names_hash.delete(“Lyel”)` to remove the pair.
+ Sometimes we use a data type called a symbol for the key in a hash. Symbols are unique, which means that they can only exist once in Ruby code, which is convenient because keys in a hash are unique. (CS - one to one/many relationships?) A symbol is made up of a colon (:) and a set of characters. Let’s create a new hash, but use symbols instead of strings for the keys.
+ Hash methods to look at: .values, .keys, .length, .include?

ITERATING THROUGH HASHES
+ Let’s learn about iteration in hashes, just like we did for arrays. For arrays we only wanted to loop through and do something to the value, but since a hash has a pair of data, we can use them both with `.each`. Say I want to print a string for each key-value pair that reads: `“#{name} has a birthday on #{birth_date}`. We do this with the `.each` method:
```ruby
names_hash.each do |key, value|
		puts “#{key} has a birthday on #{value}.
	end
```
+ We can replace the key and value placeholders with anything we want, these are just placeholders. Just remember that the first one is for the key and the second is always representing the value.
+ [Iteration with hashes Mini-Lab](https://github.com/learn-co-curriculum/hs-hash-iteration-mini-lab)

NESTED DATA STRUCTURES
+ Hashes and Arrays can occur inside of other hashes and arrays. How do we pull individual items out if this is the case?
```ruby
salad_ingredients = [
			[“romaine”, “kale”, “spring mix”],
			[“tomatoes”, “avocado”, “beets”],
			[“vinaigrette”, “ranch”, “ginger-soy”]
		]
```
This data would be much better represented as a hash (explain why). Can you help me convert it?
```ruby
salad_ingredients ={ 
  :lettuce => [“romaine”, “kale”, “spring mix”],
  :veggie => [“tomatoes”, “avocado”, “beets”],
  :dressing => [“vinagrette”, “ranch”, “ginger-soy”] 
}
```
+ Now how do I access “kale”?
+ [Nested Hashes Mini-Lab](https://github.com/learn-co-curriculum/hs-nested-data-structures-mini-lab)

REVIEW
+ Review methods, but adding in hashes and arrays.
+ define a method that:
  + takes an array of numbers and returns a sum of these.
  + takes a hash and outputs the key value pair with nice formatting.
  + returns the first item from an array.

### Conclusion / So What?
+ The web is made up of data. Without it, you wouldn't know who your Facebook friends are or how many likes you got on an Instagram post. With all this data, it's important to be able to organize it efficiently so that we can easily make changes to data sets. That's where arrays and hashes are so valuable. Even the most complex applications rely on these structures at times to organize the information in their codebase.

### Hints and Hurdles
+ Another way to think about an array is like taking a bunch of sheets of paper floating around and put them into a binder, with a page number on the bottom of each.

### Additional Media
+ [Here](http://bethannezink.github.io/We-Can-Work-It-Out/) is a fun blog post explaining Ruby data structures using the Beatles.