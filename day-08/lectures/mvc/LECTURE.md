## DAY-08 MVC 

### SWBATs
+ MODEL - Understand what a model is
+ MODELS - Build a model with attributes and actions
+ MODELS - Understand what attr_accessors are and how to use them
+ SINATRA - Understand why we use the MVC file structure and how models fit into it
+ CONTROLLERS - Understand why we need controllers (to set up routes and connect data from models to views)
+ CONTROLLLERS - Build GET request routes
+ CONTROLLERS - Connect specific routes to erb templates
+ CONTROLLERS - Connect information from models to views via controller and instance variables
+ VIEW - Understand how to create an erb template file (and how it is similar to an HTML file)
+ VIEWS - Understand what the `yield` statement in layout.erb does and why we use it
+ VIEWS - Understand why we  use instance variables in our views
+ VIEW - Understand how to use erb tags and instance variables to display dynamic information in views
+ SINATRA - Boot up server via rackup and run their app
+ SINATRA - Understand why we need a config.ru file
+ SINATRA - Understand what goes into the public folder, gemfile and config folder (environment configurations)
+ NB - Must use rackup (as opposed to shotgun) for this demo (shotgun restarts server every time page is refreshed and tweets disappear)

### Motivation / Why Should You Care?
+ You've learned how to build the back-end of a website. You learned how to build out the front-end of a website. Now it's time to put those two essential components together. Once you've mastered MVC, you have all the tools you need to build a fully functional, dynamic web application.

### Lesson Plan
**HOW WEB APPLICATIONS WORK**
+ The front-end and back-end of websites are connected by a structural system known as MVC.
+ In Ruby, Rails and Sinatra are two web application frameworks developers use. We'll be using Sinatra.
+ Have students clone [Interactive Simple Lab](https://GitHub.com/learn-co-curriculum/hs-mvc-interactive-practice)
  * Solution can be found [here](https://GitHub.com/learn-co-curriculum/hs-mvc-interactive-practice/tree/solution) 
+ MVC stands for Model View Controller
+ Models
  * The logic or code that goes into storing and maintaining the data in an application - like adding a tweet to your list of tweets - is the M in an MVC framework - the models.
  * The models are responsible for pulling data from database.
+ Views
  * The V in MVC stands for views and this directory is where we will store all of the HTML (and embedded Ruby) that gets displayed in the browser.
+ Controller
  * The C stands for Controller and the application controller file in our project will hold all the code that is in charge of making the back end - the Ruby logic - talk to the front end - the HTML in the browser that users interact with.
+ This MVC - model view controller - framework is the way that most modern web applications are organized.
  * Keeping the functionality of our application in these separate directories helps us stay organized as our apps become more and more complex.
+ We will be using a gem called Sinatra to set up our MVC framework and create our applications.

+ **Gemfile:** This is where we bring in Gems (open source code) that we can use in our project.
  * Create a development group - for working locally on our computer.
  * Look at the code snippet for Gemfile
  * In terminal in the directory of the project, run `bundle install` once you save the changes to your gemfile

+ **Config.ru:** This file controls the instructions that actually run our app
  * To run our application we'll need to start up a server with a tool like the `rackup` gem.
  * This file tells the server where to find an run the application

+ **Public Directory:** This holds all of the front end assets for our program. Assets include javascript, css and images.

+ **Config.ru** contains the configurations for running different parts of your app. We'll be adding the bundler gem here which makes sure that all parts of your application have access to the gems in your Gemfile.

+ `application_controller.rb`: connects your application to the Sinatra gem.
  * We need to create an ApplicationController class that inherits from Sinatra base. This gives us useful methods to help us navigate our application.
  * We need to configure our app to find our views and the public folder
  * This file controls all the routes. 
  * We make all instances of our classes from our models in this file to be able to display them in the view.

+ **Models**
    * This holds our backend code - it's where you would find a ruby class. All logic about how an object should look or act goes here. You don't make instances of your class here.
    * We will set up a `dog.rb` file.

+ **Views**
  * We will create a  `dog.erb` file here
  * All your HTML goes here.
  * To continue the dog example - you would display the dog here (like it's an online pet store) or form for user to list a new dog to sell. You don't create the dogs here.

**CONNECTING THE MVC COMPONENTS**
+ Setting up a route in the application controller
  * The controller is like a waiter that goes between the chef cooking up the meal (Model) and the customers receiving the food (Views)
  * Routes are set up to match the URL in the navigation bar of the browser.
  * Using http://www.audiomydarling.com/ as an example.
    * When users go this URL with their browser they are triggering the '/' route
    * When they go to http://www.audiomydarling.com/fiddle they are triggering the '/fiddle' route
    * When they go to http://www.audiomydarling.com/contact they are triggering the '/contact' route

+ Demo creating GET request with a plain text response in controller (no view).
```ruby
  get '/' do
    "HEY!!!"
  end
```
+ Demo using shotgun gem to create a local server to run our application locally. In terminal, enter `shotgun` and then in browser, go to `localhost:9393`
+ Have students practice creating a new route like '/dog' and have it display texts.

+ Demo adding a view by creating an ERB file with HTML in it. Create dog.erb file in views folder and link to the controller with `erb :dog`.
```ruby
get '/dog' do
  erb :dog
end
```
+ Have students create their own views and connect them to the controller.
+ Add CSS file to the public directory and link it to ERB file.
  * In Sinatra, you don't have to link to the public directory. Any CSS file will be linked by `<link rel="stylesheet" type="text/css" href="css/style.css"> It's weird because you don't need a relative path with Sinatra.
+ Add a photo to the site through the public directory. - same rule applies as the CSS directory, you just start the path from immediately inside the public directory.
+ Add a model called `dog.rb` that has a few attributes like breed, age, and name. Explain purpose of having the model layer.
  + It allows us to create new instances of the dog class from the controller.
+ Add instance of the dog class in the `'/dog'` response and assign it to an instance variable so it can be used in the view.
```ruby
get '/dog' do 
  @dog1 = Dog.new("Fido", "Lab", 5)
  erb :dog
end
```
+ Show how attributes of the dog can be displayed in the view using ERB.
```erb
<p> I have a dog named <%= @dog1.name %>. He is a <%= @dog1.breed %>. He is <%= @dog1.age %> years old.</p>
```
+ Review all the steps:
  + When we make a GET request, our controller creates a new dog object from the model. Then the controller takes that instance that has been created and passes it to our view so that we can show the data to our users in HTML.
+ Have students create another dog in the same request and have its attributes be displayed in the view.
+ Have students discuss in small groups the entire process, then create a new route, model, and view for something else, like a cat or a musician.
+ What if we have a bunch of different instances we want to display on a page? Prompt students.
+ Explain that we can have an array that stores all the dog instances, then iterate through them in the view to display each of them. 
+ Today we're going to start by working on building our final projects. We're going to start with static pages (controller and views) and then build out from there.

### Conclusion / So What?
+ Now's your chance to combine your creative and technical skills to fully express yourself with code. You have all the tools you need to make your own web application. Now you have to figure out what exactly it is you want to build. This can be one of the toughest parts, coming up with an idea that people can get excited about.

### Hints and Hurdles
+ Object orientation review will be necessary before launching into MVC.
+ If students want to know the mechanics of Sinatra, explain that it is beyond the scope of this lesson, but they can dive in further on their own. Sometimes you have to take these things for granted in the short term.
+ Have students walk through the code and explain to a partner the flow of MVC applications.