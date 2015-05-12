## Unit 3: Ruby Hashes - Lecture Notes

### SWBATs
+ Use and manipulate Ruby hashes

### Motivation / Why Should You Care?
+ Make two different arrays, one storing all the names of all the students in the class and another storing all their names. It's hard to match a name to an age. What if we delete an name from the name array? Suddenly nothing matches up. There has to be a better way to organize all of that material. That's where hashes come in to play.

### Lesson Plan
+ Hashes are the second data structure we’re going to talk about. 
+ Hashes give context to data (a bunch of ages without names to associate them with mean nothing), it’s a additional data dimension. 
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
+ You create a hash with curly brackets but you access a value from a hash using the square brackets.

### Additional Media
+ [Here](http://bethannezink.github.io/We-Can-Work-It-Out/) is a fun blog post explaining Ruby data structures using the Beatles.