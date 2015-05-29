# Ruby Hashes - Full Lecture

##Objective 
***Students will be able use and manipulate Ruby hashes.***

## SWBATS

+ Explain what a hash is and why it's used
+ Create a hash
+ Return a specific value from a hash using it's key
+ Mutate hashes using methods available to all hashes
+ Add delete and modify key-value pairs in a hash
+ Explain what a symbol is and why it's used
+ Use symbols as keys in hashes
+ Iterate through hashes using the each, each_key, and each_value methods
+ Parse through nested hashes and arrays to pull out specific pieces data

## Motivation
+ Make two different arrays, one storing all the names of all the students in the class and another storing all their names. It's hard to match a name to an age. What if we delete an name from the name array? Suddenly nothing matches up. There has to be a better way to organize all of that material. That's where hashes come in to play.

## Lesson Plan 

+ Hashes are the second data structure we’re going to talk about. (Use in real life, show a screenshot of a hash from an api call). Hashes give context to data (a bunch of birthdays without names means nothing), it’s a additional data dimension. They’re really similar to arrays in that they are like two column tables. The difference is that for an array the left side of the column is the index, for hashes there is no numbered index, but there is another piece of data on the left side of the table, called the key.


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
  +   `names_hash[“Danny”]` returns “December 3”
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

## Conclusion
Arrays and hashes are incredible important data structures that allow us organize our data into manageable chunks. You will literally never escape them

## Hints and Hurdles 
+ Students confuse the `[]` notation for arrays and hashes with `()` used in method arguments.