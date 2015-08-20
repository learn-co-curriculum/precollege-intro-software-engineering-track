## DAY-03 Ruby Arrays

_A full lecture is available [here](LECTURE.md)_

### SWBATs
+ Use and manipulate Ruby arrays

### Motivation / Why Should You Care?
+ What are things that we make lists of? Let's say we wanted to make our own bucket list. Imagine each item on the bucket list is a string that we store on an individual post-it note. If we have 20 items, we'd need 20 different post-it notes. That's a lot of post-it notes to keep track of. Ruby makes this much easier for us with one of it's main data structures: arrays. Arrays are one type of list that can be used to group and organize multiple pieces of data.

### Lesson Plan
ARRAYS
+ Array == an ordered list that can be visualized as a two-column table. Left column is the index and the right column is the thing you're listing (Draw on board, using bucket list as an example):

| Index | Bucket List Item |
| --- | --- |
| 0 | Go sky diving | 
| 1 | Visit Antarctica |
| 2 | Climb Mt. Everest |

+ Notice that the index starts at 0. This is a quirk about data structures in computer science that you just have to memorize.
+ So how do we translate this table into code?
  + `["Danny", "Lyel", "Victoria", "Vanessa"]`
  + Remember that the names are data so must be in quotes as strings.
  + We use square brackets to denote an array.
  + We don't explicitly write the index anywhere. (show the index above each item on the board)
+ Assign the array to a variable so that when we call the variable name, we have the array returned to us.
+ Have students create their own bucket list array of their choice and assign it to a variable.

ACCESSING ITEMS IN AN ARRAY
+ What if I want to get the third item listed in my array?
+ We access items in an array using the brackets and the index of the thing you want.
  + `names[3]` will give me what? (the fourth item). how do I get the third item?
  + 
ASSIGNING ITEMS
+ So what if we want to change one of the items in the array?
`names[2] = "Joe"` will re-assign the third item in the array to Joe.

ADD AND REMOVE ITEMS
+ We can also add and remove items from an array.
+ `names.push("Alfred")` will add an item with the contents of the argument to the end of the array it is called on. You can also use `<<` like so: `names << "Alfred"`.
+ `names.pop` will remove the last item in an array.
+ `names.delete_at(3)` will delete the item at index 3.
+ `names.insert(2, "Dan")` will insert the item at the index you specify in the first argument.
+ Here are some other cool methods: .length, .reverse, .sample, .sort
+ [Mini-Lab: Manipulating arrays](https://GitHub.com/learn-co-curriculum/hs-manipulating-arrays-mini-lab) (start with array and then have 10 instructions, what does array look like at the end?)
  + Answer: `["Peru", "Laos", "Chad", "Cuba", "Togo", "Iraq", "Iran", "Mali", "Oman", "Fiji"]`

ARRAY ITERATION
+ Let's make a new array but use numbers now. Get an example set from a student and make an integer-based array. Ask a few review questions (add a number? index? etc.)
+ What if we want to do something to each number. Like add one to each number. We could do it manually: `numbers[0] = numbers[0] +1`, etc. We can also use a special method called `.each` that lets us take the same action on all of the items in an array.

######OPTIONAL: Allow students to write out .each method on their whiteboards.

```ruby
    numbers.each do |number|
      number + 1
    end
    
    names = ["danny", "lyel", "victoria", "vanessa"]
    
    names.each do |name|
     name.capitalize
    end
```
  * Note that the each method doesn't permanently alter the original array
+ Explain the breakdown of the each method
  + needs a `do` and `end`
  + content in the `|pipes|` is the item from the array that is being iterated through - it's like a placeholder, doesn't really matter what it's called but try to name it sensibly.
  + code is inside the `do` and `end` - this is what happens to each item.
+ Let's go back to our names example. Model using `.each` to output the names with `"Our class has a student named #{name}"`
+ Passing the array into a method that says hey:
```ruby
def say_hey(array)
  array.each do |item|
    puts "hey #{item}"
  end
end

names = ["joe", "lyel", "kristi", "cindy"]

say_hey(names)
```
+ [Mini-Lab - Iteration through arrays](https://GitHub.com/learn-co-curriculum/hs-array-iteration-mini-lab)

### Conclusion / So What?
+ The web is made up of data. Without it, you wouldn't know who your Facebook friends are or how many likes you got on an Instagram post. With all this data, it's important to be able to organize it efficiently so that we can easily make changes to data sets. That's why arrays are so valuable. Even the most complex applications rely on these structures at times to organize the information in their codebase.

### Hints and Hurdles
+ Another way to think about an array is like taking a bunch of sheets of paper floating around and put them into a binder, with a page number on the bottom of each.
+ Pill box with all your pills for Monday, Tues, Wed, etc. Each day in the pill box is one index in an array

### Additional Media
+ [Here](http://bethannezink.GitHub.io/We-Can-Work-It-Out/) is a fun blog post explaining Ruby data structures using the Beatles.
