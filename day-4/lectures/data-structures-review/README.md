## Unit 4: Data Structure Review - Lecture Notes

### Motivation / Why Should You Care?
+ Sometimes it takes a bit of repetition for a concept to click. Coding is like any new skill you might pick up -- the more you do it, the better you get at it. Last unit we covered arrays and hashes. Let's review what we learned.

### Lesson Plan
+ Difference between an array and a hash
+ Syntax for arrays and hashes
+ Iterating over arrays and hashes
+ Create array with the different ages in the class. Then calculate:
  + The sum of all the ages
  + The average age
  + The oldest age
+ Turn ages array into a hash with students' names as keys. Then calcuate:
  + The sum of all the ages
  + The average age
  + The youngest
  + Organize the students alphabetically.
+ Write a method that takes in any array of numbers as an argument and gives back the average?
+ Nested hashes and arrays
  + How do we pull individual items out if this is the case?
```ruby
school_subjects = [
	["algebra", "geometry", "trigonometry"],
	["physics", "biology", "chemistry"],
	["European history", "world civilizations", "U.S. history"]
]
```
  + Convert `school_subjects` to a hash.
```ruby
 school_subjects = {
	:math => ["algebra", "geometry", "trigonometry"],
	:science => ["physics", "biology", "chemistry"],
	:social_studies => ["European history", "world civilizations", "U.S. history"]
}
```
  + Now how do I access `"biology"`?

### More Practice
+ [Mini-lab: Ruby Menu Challenge](https://github.com/learn-co-curriculum/hs-ruby-menu-challenge)