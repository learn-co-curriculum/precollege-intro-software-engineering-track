## DAY-09 APIs


###Objective
**Students will be able to integrate an API into their project to provide additional functionality***

###Motivation
![Web APIs](https://s3.amazonaws.com/after-school-assets/API.png)
Think about how many cool apps there are out there: Instagram, Yelp, Yumly, Foursquare, Spotify (etc). There are a million; too many to list. All of these apps have a way for you to sign up and interact with the application. With Instagram, you can upload photos, search hashtags, and look at all the photos tagged in a specific location. 


In the same way that you can interact with an application, a program can as well. API stands for "Application Programming Interface". In a nutshell, an API is a set of instructions that allows developers to change and control existing web applications. It's a way for the developers of existing applications to allow other people to get their data in a controlled way. For example, the facebook API has a specific function that allows developers to integrate posting to a facebook wall. The Twitter API has a function that allows developers to display all of a user's tweets.

APIs are a huge part of programming, and even though we're not going to get too much into how they work now (that's a big part of the advanced course), we wanted to introduce you to some of their power now.

###Lesson Plan
+ We're going to use the [Twilio API](https://github.com/twilio/twilio-ruby) for this project to send text messages from our code
+ Flatiron's Twilio Account:

```
email: hs@flatironschool.com
pw: Flatiron1!
twilio phone number: +14342605034
account_sid: ACed3ed813257f8acedfce46a695216257
auth_token: cb1dd832eda91ea39319fe6827f1650b
```

+ We will be interacting with APIs through a Ruby gem. A gem is an open-source library of code written by other developers that we can incorporate into our projects to make texting way easier.
+ Create a file called `twilio.rb` in your development directory
+ To install the gem, in terminal enter: `gem install twilio-ruby`.
+ The first thing we need to do in `twilio.rb` is require the gem: `require 'twilio-ruby'`. We downloaded the gem, but this program needs it. If we were building a Sinatra application, this would go in our Gemfile.
  * Now we have access to all the methods in the gem.
+ Setup Work:
```ruby
require 'twilio-ruby'

account_sid = 'ACed3ed813257f8acedfce46a695216257'
auth_token = 'cb1dd832eda91ea39319fe6827f1650b'


@client = Twilio::REST::Client.new(account_sid, auth_token)
```

  * Typically when you use an app, you have to enter a username and password to log in. The `account_sid` and `auth_token` are the information Twilio needs to programmatically log us into our account
  * Twillio::Rest::Client are classes defined in the twilio-ruby gem.
  * We're creating a new instance of the Twilio class that inherits from (Rest, which inherits from Client). 
  * The new method thats our account_sid and auth_token as arugments
  * Now we have a client to send our texts for us!!
+ Now let's draft a text:
```ruby
@client.messages.create(
  from: '+14342605034',
  to: '+1numberhere',
  body: 'Hey there!'
)
```
  * Twilio gives you a number which all your texts/calls come from.
  * You can modify the from number and the body to send whatever you want!

+ To run this code and send the text message, in terminal enter `ruby twilio.rb`


###Resources
[Here's a great Quora page on APIs for laypeople.](http://www.quora.com/In-laymans-terms-what-is-an-API-1)

[And here's an excellent explanation of API's from How Stuff Works](http://money.howstuffworks.com/business-communications/how-to-leverage-an-api-for-conferencing1.htm)