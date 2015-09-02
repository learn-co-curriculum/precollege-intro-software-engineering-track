## Let's Review OO - Full Lecture

_A full lecture is available [here](LECTURE.md)_

+ Let's build out a Movie class. Every movie has a director, producer, name, actors/actresses, length and genre. Movie's can win awards

+ Let's first define our class:
```ruby
class Movie
end
minions = Movie.new
```
  * Right now, our movie doesn't look like anything or do anything

+ When a movie is created, it needs to have a director and producer before it can do anything else, so we need an initialize method that assigns those attributes. 
```ruby
class Movie
  def initialize(director, producer)
    @director = director
    @producer = producer
  end
end
minions = Movie.new(["Kyle Balda", "Pierre Coffin"], [" Chris Meledandri", "Janet Healy"])
``` 

+ Now we need to be able to hire actors. Movies all have multiple actors, so we expect the `@actors` attribute to store an array. We should define that attribute on initialization to store an empty array. We also need a writer method that adds actors to the array, and a reader to tell us what actors are in the movie

```ruby
class Movie
  def initialize(director, producer)
    @director = director
    @producer = producer
    @actors = []
  end

  def actor=(actor)
    @actor << actor
  end

  def actor
    @actor.each do |a|
      puts a
    end
  end

end
minions = Movie.new(["Kyle Balda", "Pierre Coffin"], [" Chris Meledandri", "Janet Healy"])
big_daddy.actor=("Sandra Bullock")
big_daddy.actor=("Jon Hamm")
big_daddy.actor=("Michael Keaton")
``` 

+ Let's add reader and writer methods for length, genre, and rating. A movie doesn't start out with a rating, so let's set it to 0 in initialization
```ruby
class Movie
  def initialize(director, producer)
    @director = director
    @producer = producer
    @actors = []
    @rating = 0
  end

  def actor=(actor)
    @actor << actor
  end

  def actor
    @actor.each do |a|
      puts a
    end
  end

  def genre=(genre)
    @genre = genre
  end

  def genre
    @genre
  end

  def length=(length)
    @length = length
  end

  def length
    @length
  end

  def rating=(rating)
    @rating = rating
  end

  def rating
    @rating
  end
end

```

+ And now the actions: win_award and bad_review. The win_award method should increase the ratings, and the bad_review method decreases the ratings.
```ruby
class Movie
  def initialize(director, producer)
    @director = director
    @producer = producer
    @actors = []
    @rating = 0
  end

  def actor=(actor)
    @actor << actor
  end

  def actor
    @actor.each do |a|
      puts a
    end
  end

  def genre=(genre)
    @genre = genre
  end

  def genre
    @genre
  end

  def length=(length)
    @length = length
  end

  def length
    @length
  end

  def rating=(rating)
    @rating = rating
  end

  def rating
    @rating
  end

  def win_award
    @rating += 500
  end

  def bad_review
    @rating -= 100
  end
end
```