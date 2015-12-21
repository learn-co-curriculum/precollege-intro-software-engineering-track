# DAY-03 Ruby Hashes

_A full lecture is available [here](LECTURE.md)_

## SWBATs
+ Use and manipulate Ruby hashes

## Motivation / Why Should You Care?
+ Make two different arrays, one storing all the names of all the students in the class and another storing all their names. It's hard to match a name to an age. What if we delete an name from the name array? Suddenly nothing matches up. There has to be a better way to organize all of that material. That's where hashes come in to play.

## Lesson Plan
+ Dictionaries are the Swift version of a hash.  Dictionaries can also be thought of as two-column tables. The difference is that for an array the left side of the column is the index, for dictionairies there is no numbered index, but there is another piece of data on the left side of the table, called the **key**.

####Dictionaries

| Key | Value |
| --- | --- |
| "Danny" | "December 3" | 
| "Victoria" | "December 2" |
| "Vanessa" | "September 16" |

####Array Example for Comparison
 
| Index | Item |
| --- | --- |
| 0 | "Danny" |
| 1 | "Victoria" |
| 2 | "Vanessa" |

+ We use dictionaries when we have a piece of data tied to another piece of data. We call this a key-value pair. The key in a hash has to be unique, because it's how we access values from the dictionary. 
+ We write a dictionary like this: `names_dictionary = { "Danny" => "December 3", "Victoria" => "December 2" }`

ACCESSING DATA IN A DICTIONARY
+ Now we don't have indices, but we have keys. Given what we know about arrays, how do you think we'd access a value from a dictionary?
  + `names_dict["Danny"]` returns `"December 3"`
+ Knowing what we know about arrays, how would we change a key-value pair's value?
  + `names_dict["Victoria"] = "December 1"`
+ To add a new key-value pair we use the same syntax:
  + `names_dict["Lyel"] = "April 1st"`
+ To delete we use `names_dict.delete("Lyel")` to remove the pair.
+ Sometimes we use a data type called a symbol for the key in a dictionary. Symbols are unique, which means that they can only exist once in Ruby code, which is convenient because keys in a dictionary are unique. (CS - one to one/many relationships?) A symbol is made up of a colon (:) and a set of characters. Let's create a new dictionary, but use symbols instead of strings for the keys.

ITERATING THROUGH DICTIONARIES


##NESTED DATA STRUCTURES *This material is bonus - think of it as nice-to-have*
+ Hashes and Arrays can occur inside of other hashes and arrays. How do we pull individual items out if this is the case?
```ruby
salad_ingredients = [
      ["romaine", "kale", "spring mix"],
      ["tomatoes", "avocado", "beets"],
      ["vinaigrette", "ranch", "ginger-soy"]
    ]
```
This data would be much better represented as a hash (explain why). Can you help me convert it?
```ruby
salad_ingredients ={ 
  :lettuce => ["romaine", "kale", "spring mix"],
  :veggie => ["tomatoes", "avocado", "beets"],
  :dressing => ["vinagrette", "ranch", "ginger-soy"] 
}
```


## Conclusion 
+ The web is made up of data. Without it, you wouldn't know who your Facebook friends are or how many likes you got on an Instagram post. With all this data, it's important to be able to organize it efficiently so that we can easily make changes to data sets. That's where arrays and hashes are so valuable. Even the most complex applications rely on these structures at times to organize the information in their codebase.


