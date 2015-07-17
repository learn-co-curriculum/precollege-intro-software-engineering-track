# DAY-06 Advanced Object Orientation Concepts -- Optional

If it seems some or all of your students picked up the basics of object orientation pretty quickly then you may want to also expose them to these additional concepts with them: object interactions, class methods, class variables and "self". They may encounter some of these topics in the Below are a few notes on what you might cover with them. 

## SWBATs

+ Advanced students will be exposed to stretch object oriented concepts, which will help them solve bonuses and stretch labs and challenge their abstract thinking abilities.


## Motivation / Why Should You Care?
+ Creating instance methods and variables is just one layer of what makes structuring your code in an object oriented way more powerful than the procedural way.
+ In real programs you'll have more than just one more model or object to work with. Objects represent real app interactions to make your code more dynamic and complex. Take Facbeook for example, we've talked about a User class in the past for a variety of social networks, but Posts might also have specific functionality separate from Users, so you'd need another Post class.
+ Object orientation isn't just used in Ruby, but a lot of different programming languages including Javascript, Python and C++. 
+ Being able to understand how manipulating the class as a whole will prepare you to add more abstract concepts introduced by adding on a framework (like Rails, which is not in the scope of this course) and ActiveRecord or databases in particular. 


##Object Interactions

+ In past examples of objects we've been dealing with attributes that have been strings like @name = "Bob" or integers like @age = 17. An attribute can be any datatype, including another object that you've created. 
+ The examples below show how we can initialize an object we've created with a different object we've created in the same way that we would initialize it with a string. 

```ruby

class Dog

  attr_reader :name, :breed, :age
  attr_accessor :owner


  def initialize(name,breed,age)
    @name = name
    @breed = breed
    @age = age
    @owner = nil
  end

end


class Owner
  
  attr_accessor :dog
  attr_reader :name

  def initialize(name,dog=nil)
    @name = name
    @dog = dog
  end

  def talk_about_dog
    "My dog's name is #{@dog.name} and it's a #{@dog.breed}. My dog is #{@dog.age}-years-old."
  end

end

doug_funny = Owner.new("Doug Funny")
porkchop = Dog.new("Porkchop","French Bulldog",3)
doug_funny.dog=porkchop
porkchop.owner=doug_funny
doug_funny.talk_about_dog


```

+ You can also use one object to call another object's methods.


```ruby

class Dog

  attr_reader :name, :breed, :age
  attr_accessor :owner, :hunger_level, :needs_walk


  def initialize(name,breed,age)
    @name = name
    @breed = breed
    @age = age
    @owner = nil
    @hunger_level = 0
    @needs_walk = false
  end

  def get_walked
    @needs_walk = false
    @hunger_level += 5
  end

  def get_fed
    @hunger_level -= 10
  end

  def hungry?
    if @hunger_level >= 10
      return true
    else
      @needs_walk = true
      return false
    end
  end

  def needs_walk?
    @needs_walk
  end

end


class Owner
  
  attr_accessor :dog
  attr_reader :name

  def initialize(name,dog=nil)
    @name = name
    @dog = dog
  end

  def talk_about_dog
    "My dog's name is #{@dog.name} and it's a #{@dog.breed}. My dog is #{@dog.age}-years-old."
  end

  def walk_dog
    @dog.get_walked
  end

  def feed_dog
    if hungry?
      @dog.get_fed
    else
      @dog.get_walked
    end
  end

end

doug_funny = Owner.new("Doug Funny")
porkchop = Dog.new("Porkchop","French Bulldog",3)
doug_funny.dog=porkchop
porkchop.owner=doug_funny
doug_funny.walk_dog
doug_funny.feed_dog


```

##Class Variables and Class Methods

+ We've mostly been focused on methods that we can use on each individual instance of the class, but we can also make methods that we can use on the entire class.
+ The most common use case for a class method is to create keep track of all of the instances of that class that we've created.
+ Class methods are defined with the double at-sign `@@im_a_class_variable` and class methods are look similar to instance methods, but they have an additional keyword called `self` in front of it (we'll cover what self is next!)
+ This is a great opportunity to learn more about your students and ask them their favorite shows.


```ruby


class TvShow

  

  @@all_shows = []
  attr_reader :name, :network, :genre

  def initialize(name,network,genre)
    @name = name
    @network = network
    @genre = genre
    @@all_shows << self
  end


  def self.all_shows
    @@all_shows
  end


end

vampire_diaries = TvShow.new("Vampire Diaries", "CW", "fantasy")
game_of_thrones = TvShow.new("Game of Thrones", "HBO","fantasy")
catfish = TvShow.new("Catfish", "MTV", "documentary")
TvShow.all_shows.each do |show|
  puts "Coming up on TV Guide: #{show.name} on #{show.network}"
end


```

+ Class methods are called on the class rather than the instance of the object.



##Self

+ This is going to sound weird, but Ruby classes are self aware -- meaning they know what they are and what properties and methods it has at all times. That's why we can call `[1,2,3].class => Array` or `vampire_diaries.class => TvShow`. 
+ Just like in the English language it can sometimes be helpful referring to yourself -- instead of saying 'me' or 'I' we use the keyword self. 
+ Self can be kind of confusing because it actually has two different meanings depending on where it's used. 
+ In a class method, self means the object as a whole. That's why we make class methods with self in front of them. We're telling Ruby, this is a method that can be called directly onto TvShow. Within an instance `self` actually means
+ Use an analogy to a machine or factory(the class) versus what the machine or factory makes(the instance). A car factory takes in pieces, makes the car and then delivers the new car to dealerships all over the world. The factory knows about all the cars it's made to keep track for safety purposes and so they know how many cars they've sold.

##Conclusion/So What?


+ Class methods and variables give you access to something 
+ Ruby classes are self-aware -- they know about themselves and you can use that to help you create methods when you want to know about the class instead of an individual instance or example of the class.
+ Making our objects interact means that we can represent much more realistic relationships in our apps.  


##Hints and Hurdles

+ Explaining the difference between self in an instance method versus in a class method can be confusing. Use pry to show students what self is at every step.
+ This is a lot of abstraction to cover all at once. You can just teach object interaction, then, if it seems like they get it then introduce class methods/variables and self.  
