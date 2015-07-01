## DAY-08 - Forms 

### SWBATs

+ Understand that forms are how we collect data from users on the web.
+ Explain the difference between a GET and POST request
+ Write forms with different input types using HTML
+ Access form data using params in our POST 

### Motivation / Why Should You Care?

+ Even post to someone's facebook wall? How about make a new tweet? Enter your username and password on ANY website? Guess what, you filled out a form! Forms are how we collect input from our users. 

### Lesson Plan

+ We've seen how to setup a GET request in Sinatra. 
```ruby
get "/dogs" do
	erb :index
end
```
+ What if we want our users to be able to send in information? For this, we can use a "POST" request. Post requests let our users post information to the server. When you click "post" on your friend's facebook wall, you're making a post request to facebook's servers.
+ A post request needs a route just like a GET request - the request has to be going to a specific place. 
+ Seeing how we make a GET request to "/dogs", how do you think we make a POST request to "/dogs"?
```ruby
post "/dogs" do
	#we'll do stuff with the data here!
end
```
+ Awesome - we now have a controller action for `post "/dogs"`. Now how do we use it? 
+ We can setup a form. We setup forms using the `form` tag, like this:
```html
<form method="POST" action="/dogs">
</form>
```
+ The method is the type of request the form will make, such as a POST request. The action is the route the form will go to - the form above will end up in the controller action we created for `post "/dogs"`.
+ Inside of our form, we can add inputs using the `input` tag.
```html
<form method="POST" action="/dogs">
	<input type="text" name="name">
	<input type="text" name="breed">
	<input type="text" name="age">
	<input type="submit">
</form>
```
+ We can test this by rendering some text in our controller action. 
```ruby
post "/dogs" do
	"After pressing submit on our form, we're in the post '/dogs' action!"
end
```
+ So we know our form is going to the correct place, but how can we actually use the data? 
+ Sinatra gives us access to forms data through something calling params. (params is short for parameters). Let's update our controller action to puts params to our terminal so we can see what it looks like. 
```ruby
post "/dogs" do
	puts params
end
```
+ Let's submit the form again and now look at our terminal. Here are our params - look familair??
	+ **should look something like this** `{"breed"=> "yorkie"}`
+ That's right, params is a hash! We can access it the same we access data in any other hash. 
+ Now, we can update our request to make a new instance of our Dog class based on what our user submits. 
```ruby
post "/dogs" do
	@dog1 = Dog.new(params[:name], params[:breed], params[:age])
	erb :dog
end
```
+ After we create our instance, we render our ERB template the same way we do using a get request. Now, our output will change based on the input that we get form our user.

### Conclusion/So What?

We can now accept input from our users and give output based on our responses! We've learned how every website anywhere takes in user's data. 

### Hints/Hurdles

+ This is a lot to pack into one MVC lecture - feel free to save this for after Ideation/early Day 9. 