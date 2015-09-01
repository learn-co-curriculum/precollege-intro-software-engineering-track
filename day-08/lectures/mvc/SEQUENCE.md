# MVC Lesson Sequence

a) Start with a general discussion of how the internet works. Servers, clients, and requests going back and forth between them.

b) Move in to a brief explanation of MVC (a framework for building web applications), use the 'Chef'(Model), 'waiter' (Controller), 'View (table) analogy.

c) Let students download the Sinatra template. Explain that while it looks daunting, all of that code can actually be written in one file. Prompt them to discuss why we separate into different files (readability, easier to debug, single responsibility) - really great visual for students <a href="https://drive.google.com/file/d/0B17rUuqpJ8atX084clB4WHM5OGM/view"> MVC Code Visual</a>

d) Walk through the various files and directories.

c) Start by creating a brand new get request route (get '/about_me' do etc). Use shotgun and show that this relates to the url www.mypage.com/about_me. Have the students create a few routes.

d) Connect the routes to erb pages. Show that erb files are just html

e) Show how you can add logic to your forms like iterators or if-statements to filter the data you display in your views

** Option to Stop here based on students' needs! **

f) Now we need to get data from the user. We use a form here. Have the students figure out how to get a form on their erb page (early release).

g) Explain the structure of forms (name attribute, method, action)

h) Show that when you submit, form data is packaged in a hash called params. You'll need to create a 'post route' in your controller. puts params to show in console.  Discuss pulling pieces out of the params hash. CELEBRATE THIS!

i) Connect your application controller to your models (using require relative) so that you have access to the methods in there. Show that you can now use the methods in your application controller.

j) Pass the data you want to manipulate in to the method you want to use and save the output to an @instance_variable, allowing us to read it in our erb file.

k) Render the contents of the @instance_variable using <%= erb tags %> in the erb page.