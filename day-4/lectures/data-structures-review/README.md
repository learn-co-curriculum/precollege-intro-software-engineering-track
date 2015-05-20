## Unit 4: Data Structure Review - Lecture Notes

### Motivation / Why Should You Care?
+ Sometimes it takes a bit of repetition for a concept to click. Coding is like any new skill you might pick up -- the more you do it, the better you get at it. Last unit we covered arrays and hashes. Let's review what we learned.

### Lesson Plan
+ Difference between an array and a hash - 
  * Think of an array as a list of items. We access information in an array from an index, starting with 0.
  * A hash is more specific way of labeling information. A hash is made up of key-value pairs. Keys have to be unique. Access information in a hash through the key.
+ Syntax for arrays and hashes
  *Array:
  ```ruby
    snax = ["chips", "oreos", "celery"]
    snax[0] #returns "chips"
    snax.delete("celery") #removes celery
    snax << "popcorn" #adds popcorn to the end of the array)]
    snax.push("trail mix") #adds trail mix to the end of the array
    snax.last #returns trail mix
    snax.first #returns chips
    snax[3] = "Cotton Candy" #replaces trail mix with cotton candy
  ```
  * Hashes
  ```Ruby
    todo = {
      :homework => "Algebra problems",
      :chores => "make my bed",
      :shopping => "buy new shoes"
    }

    todo[:homework] #returns Algebra Problems
    todo.delete(:homework) #removes that key-value pair from the hash
    todo[:travel] = "Go to Spain" #adds that key value pair to the hash
    todo[:chores] = "laundry" #changes the value of the :chores key to laundry
  ```
+ Iterating over arrays and hashes
  * Arrays:
  ```ruby
    snax = ["chips", "oreos", "celery"]
    snax.each do |snack|
      "I love #{snack}"
    end
  ```
  * Hashes:
  ```ruby
    todo = {
      :homework => "Algebra problems",
      :chores => "make my bed",
      :shopping => "buy new shoes"
    }

    todo.each do |category, task|
      "I have so much to do! #{category}: #{task}"
    end

    todo.each_key do |category|
      "I have to do #{category}"
    end

    todo.each_value do |task|
      "I have to #{task}!!!"
    end
  ```
+ Create array with the different ages in the class. Then calculate:
  + The sum of all the ages
  ```ruby
    total = 0
    ages = [15, 16, 17, 19]
    ages.each do |age|
      total += age
    end
    total
  ```
  + The average age
  ```ruby
    ages = [15, 16, 17, 19]
    sum = 0.0
    ages.each do |age|
      sum += age
    end
    puts sum/ages.length
  ```
  + The oldest age
  ```ruby
    ages = [15, 16, 17, 19]
    biggest_age = ages[0]
    ages.each do |age|
      if biggest_age < age
        biggest_age = age
      end
    end
    puts biggest_age
  ```
+ Turn ages array into a hash with students' names as keys. Then calcuate:
  + The sum of all the ages
  ```ruby
    ages = { :beth => 15,:sarah => 16,:jeff => 17,:carrie => 19}
    array = ages.values
    sum = 0
    array.each do |number|
      sum += number
    end
    puts sum
  ```
  + The average age
  ```ruby
    ages = { :beth => 15,:sarah => 16,:jeff => 17,:carrie => 19}
    array = ages.values
    sum = 0.0
    ages.each_value do |age|
      sum += age
    end
    puts sum/array.length
  ```
  + The youngest
  ```ruby
    youngest_student = ages.sort_by {|keys,values| values}[0]
  ```
  + Organize the students alphabetically.
  ```ruby
    alphabetical_student = ages.keys.sort
  ```
+ Write a method that takes in any array of numbers as an argument and gives back the average?

```ruby
def find_average(array)
  sum = 0.0
  array.each do |number|
    sum += number
  end
  puts sum / array.length
end
```
+ Nested hashes and arrays
  + How do we pull individual items out if this is the case?
```ruby
school_subjects = [
	["algebra", "geometry", "trigonometry"],
	["physics", "biology", "chemistry"],
	["European history", "world civilizations", "U.S. history"]
]
```
  * Algebra"
  ```ruby
  school_subjects.first.first
  school_subjects[0][0]
  ```
  * World Civilizations:
  ```ruby
  school_subjects[2][1]
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
  ```ruby
    school_subjects[science][1]
  ```
### More Practice
+ [Mini-lab: Ruby Menu Challenge](https://github.com/learn-co-curriculum/hs-ruby-menu-challenge)