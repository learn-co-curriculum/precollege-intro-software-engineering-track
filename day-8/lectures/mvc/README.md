## DAY-08 MVC 

### SWBATs
+ Understand and articulate the purpose of an MVC framework and begin building out their MVC final projects.

### Motivation / Why Should You Care?
+ You've learned how to build the back-end of a website. You learned how to build out the front-end of a website. Now it's time to put those two essential components together. Once you've mastered MVC, you have all the tools you need to build a fully functional, dynamic web application.

### Lesson Plan
+ Explain that the front-end and back-end of websites are connected by a structural system known as MVC.
+ In Ruby, Rails and Sinatra are two web application frameworks developers use. We'll be using Sinatra.
+ What is MVC?
  + On board, explain functionality and relationship between:
    + Model
    + View
    + Controller
+ Have students clone Interactive Simple Lab
+ Show students a website that has many different pages. Explain difference between routes and domain.
+ Explain requests and responses. Explain what a GET request is. 
+ Model creating GET request with a plain text response in controller (no view).
+ Demo using shotgun gem to create a local server to run our application locally.
+ With class, create a new GET request `'/dog'` and add "Hello doges." in the response body. Show on site.
+ Demo adding a view by creating an ERB file with HTML in it. Create dog.erb file in views folder and link to the controller with `erb :dog`.
+ Have students create their own views and connect them to the controller.
+ Add CSS file to the public directory and link it to ERB file.
+ Add a photo to the site through the public directory.
+ Add a model called `dog.rb` that has a few attributes like breed, age, and name. Explain purpose of having the model layer.
  + It allows us to create new instances of the dog class from the controller.
+ Add instance of the dog class in the `'/dog'` response and assign it to an instance variable so it can be used in the view.
+ Show how attributes of the dog can be displayed in the view using ERB.
+ Review all the steps:
  + When we make a GET request, our controller creates a new dog object from the model. Then the controller takes that instance that has been created and passes it to our view so that we can show the data to our users in HTML.
+ Have students create another dog in the same request and have its attributes be displayed in the view.
+ Have students discuss in small groups the entire process, then create a new route, model, and view for something else, like a cat or a musician.
+ What if we have a bunch of different instances we want to display on a page? Prompt students.
+ Explain that we can have an array that stores all the dog instances, then iterate through them in the view to display each of them. 
+ Today we’re going to start by working on building our final projects. We’re going to start with static pages (controller and views) and then build out from there.

### Conclusion / So What?
+ Now's your chance to combine your creative and technical skills to fully express yourself with code. You have all the tools you need to make your own web application. Now you have to figure out what exactly it is you want to build. This can be one of the toughest parts, coming up with an idea that people can get excited about.

### Hints and Hurdles
+ Object orientation review will be necessary before launching into MVC.
+ If students want to know the mechanics of Sinatra, explain that it is beyond the scope of this lesson, but they can dive in further on their own. Sometimes you have to take these things for granted in the short term.
+ Have students walk through the code and explain to a partner the flow of MVC applications.