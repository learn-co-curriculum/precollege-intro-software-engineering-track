# Object Orientation - Full Lecture

## Objective
***Students will be able to use and explain the function of objects to model real-life structures.***

## SWBATs
+ Create a class
+ Explain what object orientation is and why we use it
+ Create an instance of a class
+ Add attributes (reader and writer methods) to a class
+ Use instance variables within a class
use correct syntax in naming classes
+ Create an initialize method to assign values to attributes when an instance is created
+ Create instance methods to have objects take action
+ Convert scripted code into object oriented code

## Note
+ Reopening classes and the concept of `self` should be considered advanced topics. Do not introduce these today unless students are hungry for the material.

## Motivation / Why Should You Care?
Who knows how many people are on Facebook? Close to a quarter of the world is on Facebook (roughly 2 billion). What do you think the average number of friends a user has? What about the number of photos? How many likes happen in a day? We're talking about trillions of pieces of data that Facebook tracks and stores on huge tracts of land that they bought literally just to store all their data.

When you log in, how does Facebook know to your data? Your exact profile and data loaded for you and you alone, and not someone else's? How does that work? How in the world are they able to do that for 2 billion users?

Object Orientation is a way to organize, manipulate and store data. It's so powerful that it gives companies like Facebook the ability to do that - Have them name apps (Instagram, Snapchat, Square or Strip, Spotify). It's one of the most important and pervasive concepts in computer programming and supports all sorts of applications like Instagram and Facebook, to ESPN to payment apps like Amazon payment. In fact, you guys are going to build your own payment system tomorrow.

The answer is through a type of programming called object-oriented programming. It's a way a building new objects (alien enemies, Sim people, cars, etc.) by making "factories" that standardize how the objects are made. Programmers don't have to code every car in GTA individually, every Facebook account, or every Amazon payment. What they do is create a template for objects that can then be tailored without having to recreate all of the code for each new object. The same goes for applications like Facebook and Twitter.

## Lesson Plan
+ Create an instance of a Facebook user with a hash
```ruby
steph = {
  :name => "Steph",
  :email => "coleman@flatironschool.com",
  :password => "flatiron",
  :friends => 0
}
```
+ It would take forever to build a hash for each Facebook user.
  * Instead we can make a standardized template using and class. Before we jump into building out Facebook, we're going to backtrack to a more simple example, let's make babies
+ Class Syntax:
```ruby
  class Baby
  end

  north_west = Baby.new
```
+ Define class and instance of a class - we created our class (blueprint) and an instance of a class above (actual user)
+ Objects have descriptors (attributes) and actions (methods)
  * List possible descriptors and actions for a Facebook user
  * Descriptor: name, hair_color, birthday, eye_color
  * Actions: cry, eat, spit_up
+ Reader and writer methods: methods that allow us to assign a value to an attribute and get the value of that attribute
  * Define the reader and writer methods inside the user class
  * Start by using reallllly long reader and writer method names so that students get frustrated typing them over and over again.
  * Reader and writer methods are called on instances of a class
  * Name attribute writer method:
```ruby
  def give_baby_name=(name)
    @name = name
  end

  north_west.give_baby_name("North West")
```
    * The `=` is part of the method name
    * The method is called `give_baby_name=`
    * This method accepts an argument, and the argument gets assigned as the value of the `@name` attribute (instance variable)
  * Name attribute reader method:
  ```ruby
  def ask_baby_name
    @name
  end
  north_west.ask_baby_name
  ```
    * Method returns the value of the `@name` variable
    
+ Instance variables: is the attribute: `@name`, `eye_color`. This variable stores a different value for each instance of our class
+ Interactive Lab: (Basic Objects)[https://GitHub.com/learn-co-curriculum/hs-basic-objects-mini-lab]
+ Initialize method:
  * What's the one thing in movies or tv shows that you always want to have happen right when the baby is born.Like it's dramatic, the baby is coming early, the mother's health is bad, they're not sure the baby is going to live. What's the first sign that the baby is ok? It cries.
  * The initialize method is a set of instructions that happens at the moment of creation. Let's make our babies cry the moment they're born.
  ```ruby
  class Baby
    def initialize
      puts "WAAA!"
    end
  end

  north_west = Baby.new
  suri = Baby.new
  princess_charlotte = Baby.new
  ```
  * We don't ever call the initialize method works. every time we call `new`, the `initialize` method is automatically called.
  * Now, every time we create a new baby, it cries.
  * Have students add an initialize method to their interactive lab classes
  * Passing arguments to the initialize method
    * Have students add an argument to their initialize method
    * The initialize method can do a lot of other cool things. When you were born did your parents know what they wanted to name you? If yes, the moment you were born you already had a name. We can assign the value to the @name attribute the moment you were born
    ```ruby
    class Baby
      def initialize(name)
        @name = name
        puts "WAAA!"
      end
    end

    north_west = Baby.new("North West")
    suri = Baby.new("Suri")
    princess_catherine = Baby.new("Charlotte Elizabeth Diana")
    ```
    * We need a reader method to be able to ask the baby's their name
    ```ruby
    class Baby
      def initialize(name)
        @name = name
        puts "WAAA!"
      end

      def name
        @name
      end
    end


    north_west = Baby.new("North West")
    north_west.name
    suri = Baby.new("Suri")
    suri.name
    princess_catherine = Baby.new("Charlotte Elizabeth Diana")
    ```
    * BUT at this point in time, North West can't change it's name. We don't have a writer method in our class. So when North West grows up, and inevitably realizes her name is so weird, she'll want to be able to change it:
        ```ruby
    class Baby
      def initialize(name)
        @name = name
        puts "WAAA!"
      end

      def name
        @name
      end

      def name=(name)
        @name = name
      end
    end


    north_west = Baby.new("North West")
    north_west.name
    north_west.name=("South West")
    north_west.name
    ```
+ Create a functionality method called `cry` that makes the baby cry
+ Now let's build out a Facebook User class
  * Ask students what attributes and actions they want to build out. 
  * Below is a rough example of methods to build out for a Facebook user class
  ```ruby
    class User
      def initialize(username, password)
        @username = username
        @password = password
        @friend_count = 0
        @pics = []
      end

      def username=(username)
        @username = username
      end

      def username
        @username
      end

      def upload_pic(picture)
        @pics << picture
      end

      def birthday=(birthday)
        @birthday = birthday
      end

      def birthday
        @birthday
      end
    end
    ```
+ Knowing this, what do you think the user class of Twitter looks like? ** Have the students name the similarities and differences **
+ Lab: [Garden Gnome](https://GitHub.com/learn-co-curriculum/hs-garden-gnome-oo-lab)
+ Everything is an object
  * The string `"hi"` is actually `String.new("hi")`
    * Shortcut is just syntactic sugar
  * Same for arrays, integers, hashes, etc.
  * We can add methods to existing classes

  ```ruby
    class Array
    def say_items
      puts "The items in this array are:"
      self.each do |item|
        puts item
      end
    end
  end
  ```
+ Interactive Practice: [Extending Existing Objects Mini-Lab](https://GitHub.com/learn-co-curriculum/hs-basic-objects-mini-lab)

### Conclusion / So What?
Object-oriented programming is powerful for a few main reasons. First of all, when you make an instance of a class, it is its own discrete object. If you make a change to that object, it won't affect any of your other code. This is called encapsulation. Second of all, OOP allows you to have many different methods with the same name that do the same job, but on different objects. This is called polymorphism, and it keeps your code DRY. Along with this, OOP allows you to write generic code (your blueprint!), which can be used over and over again without having to rewrite the same code. All these concepts make complex code much more reliable and easier to maintain and change.


## Hints and Hurdles
+ Reopening classes and the concept of `self` should be considered advanced topics. Do not introduce these today unless students are hungry for the material.
+ Instead of automatically naming reader and writer methods as we normally would, give them much more descriptive names at first like `tell_me_how_much_money_I_have` or `set_my_money_to`.
+ Use writers with () first when changing an attribute. Then show that we don't need them because Ruby is friendly - and that's why we are putting the = in the name of the writer method.
  ```ruby
  class Baby
    def initialize(name, gender)
      name = name
      @gender = gender
    end

    def name
      @name
    end

    def name=(name)
      @name = name
    end
  end
  north_west = Baby.new("North West", "Female")
  ```

  + First show writer like this:
  ```ruby
  north_west.name=("North West")
  ```

  + Then explain that the above is the same as:
  ```ruby
  north_west.name = "North West"
  ```

+ Hit home that a writer is a statement ("Your name is John") and a reader is a question ("What is your name?")
+ Get students to understand that anything can be turned into a class with attributes and actions. Pick a bunch of different items and make them say the attributes and actions for those classes.
+ Wait to introduce attr_accessor until the next class so they can really dig their teeth into how reader and writer methods work.
+ The baby example works really well to explain to students how reader, writer and initialize methods work
+ Be ready with real-world examples if students need more context. Thinking about a User class works well - how do users vary for different apps? Let students know that we use examples like Dogs and Babies to practice syntax. 
