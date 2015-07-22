# DAY-06 Advanced Object Orientation Concepts -- Optional

If it seems some or all of your students picked up the basics of object orientation pretty quickly then you may want to also expose them to these additional concepts with them: object interactions, class methods, class variables and "self". They may encounter some of these topics in the bonuses or extra challenges in the day 6 labs. Below are a few notes on what you might cover with them. 

## SWBATs

+ Advanced students will be exposed to stretch object oriented concepts.


## Motivation / Why Should You Care?
+ Creating instance methods and variables is just one layer of what makes structuring your code in an object oriented way more powerful than the procedural way.
+ In real programs you'll have more than just one more model or object to work with. Objects represent real app interactions to make your code more dynamic and complex. Take Facbeook for example, we've talked about a User class in the past for a variety of social networks, but Posts might also have specific functionality separate from Users, so you'd need another Post class.
+ Object orientation isn't unique to Ruby. In fact a few other popular programming languages including Javascript, Python and C++ use OO. 
+ Being able to understand how manipulating the class as a whole will prepare you to add more abstract concepts introduced by adding on a framework (like Rails, which is not in the scope of this course) and ActiveRecord or databases in particular. 


##Object Interactions

+ In past examples of objects we've been dealing with attributes that have been strings like @name = "Bob" or integers like @age = 17. An attribute can be any datatype, including another object that you've created. 
+ The examples below show how we can initialize an object we've created with a different object we've created in the same way that we would initialize it with a string. 

Let's build Facebook's user class
```ruby

class User
  attr_accessor :name, :email, :num_friends, :friends, :photos
  attr_writer :password 
  
  def initialize(name, email, password)
    @name = name
    @email = email
    @password = password
    @num_friends = 0
    @friends = []
    @wall = []
    @photos = []
  end
  
  
  def add_friends(new_friend)
    @num_friends = @num_friends + 1
    @friends.push(new_friend)
  end
  
  def upload_photo(new_photo)
    @photos.push(new_photo)
  end
  
  def wall
    puts "Here is #{@name}'s wall!!"
    puts @wall.each do |post|
      puts post 
    end
    puts @photos.each do |photo|
      puts photo
  end
end

danny = User.new("Danny", "danny@gmail.com", "skittles123")
danny.email=("iluvduckz@aol.com")


lyel = User.new("Lyel", "l@al.com", "puppies6767")
lyel.upload_photo("picture of babies hugging puppies!!!")


  
danny.add_friend(danny)
danny.upload_photo("kittenz on fleek<3")
danny.wall


  
```
+ In this example, we have two instances of a user class `lyel` and `danny`. 
+ When Danny adds lyel as a friend it adds the entire lyel object to danny's friends array, not just the string "Lyel"

+ You can also use one object to call another object's methods.

```ruby

class User
  attr_accessor :name, :email, :num_friends, :friends, :photos
  attr_writer :password 
  
  def initialize(name, email, password)
    @name = name
    @email = email
    @password = password
    @num_friends = 0
    @friends = []
    @wall = []
    @photos = []
  end
  
  
  def add_friends(new_friend)
    @num_friends = @num_friends + 1
    @friends.push(new_friend)
  end
  

  def list_friends
    @friends.each do |friend|
      friend.name
      friend.email
  end
end

danny = User.new("Danny", "danny@gmail.com", "skittles123")
danny.email=("iluvduckz@aol.com")

lyel = User.new("Lyel", "l@al.com", "puppies6767")

danny.add_friend(lyel)

danny.list_friends


```

+ In this example, the `list_friends` method iterates over danny's list of friends, and displays each friend's name and email

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
+ Just like in the English language it can sometimes be helpful referring to yourself -- instead of saying 'me' or 'I' we use the keyword `self`. 
+``self` can be kind of confusing because it actually has two different meanings depending on where it's used. 
+ In a class method, `self` means the class as a whole. That's why we make class methods with `self` in front of them. We're telling Ruby, this is a method that can be called directly onto TvShow. Within an instance `self` actually means
+ Use an analogy to a machine or factory(the class) versus what the machine or factory makes(the instance). A car factory takes in pieces, makes the car and then delivers the new car to dealerships all over the world. The factory knows about all the cars it's made to keep track for safety purposes and so they know how many cars they've sold.

```
class User
  attr_accessor :name, :email, :num_friends, :friends, :photos
  attr_writer :password 
  
  def initialize(name, email, password)
    @name = name
    @email = email
    @password = password
    @num_friends = 0
    @friends = []
    @wall = []
    @photos = []
  end
  
  
  def add_friends(new_friend)
    @num_friends = @num_friends + 1
    @friends.push(new_friend)
    new_friend.friends << self
    new_friend.num_friend += 1
  end
  

  def list_friends
    @friends.each do |friend|
      friend.name
      friend.email
  end
end

danny = User.new("Danny", "danny@gmail.com", "skittles123")
danny.email=("iluvduckz@aol.com")

lyel = User.new("Lyel", "l@al.com", "puppies6767")

danny.add_friend(lyel)

danny.list_friends
```

+ If you think about what happens when you add a friend on Facebook, not only does your number of friends increment by one, and it adds a friend to your list of friends, but it also adds you to that person's list of friends and increments their friend list.
+ When danny adds lyel as friend on Facebook, we expect lyel to be added to danny's list of friends, and danny to be added to lyel's list.
+ Inside the `add_friend` method, `self` is a reference to the current object. Because we used `danny.add_friend(lyel)`, danny is the current object. `new_friend` refers to the lyel object. After we add lyel to danny's list, and increment danny's number of friends, we can add danny to lyel's list `new_friend.friends << self`. Because `self` refers to `danny`, we're adding danny to lyel's list `new_friend.friends`

##Conclusion/So What?


+ Class methods and variables give you access to something 
+ Ruby classes are self-aware -- they know about themselves and you can use that to help you create methods when you want to know about the class instead of an individual instance or example of the class.
+ Making our objects interact means that we can represent much more realistic relationships in our apps.  


##Hints and Hurdles

+ Explaining the difference between self in an instance method versus in a class method can be confusing. Use pry to show students what self is at every step.
+ This is a lot of abstraction to cover all at once. You can just teach object interaction, then, if it seems like they get it then introduce class methods/variables and self.  
