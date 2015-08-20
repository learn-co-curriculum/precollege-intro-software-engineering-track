# Git and GitHub - Full Lecture

## SWBATs
+ Understand the purpose of GitHub and learn how to fork and clone repositories.
+ Understand the purpose of Git and GitHub, commit locally, and push to a remote repository.

## Motivation / Why Should You Care?
+ How many of you have used Google Docs? It's a great way to store documents online and makes it easy to collaborate with other people. It works best for files like word documents and spreadsheets, but it isn't equipped to store code. Thankfully, there's GitHub, which is basically the Google Docs of code.
+ Almost all major apps are stored publically or privately on GitHub. Octomaps is a cool app some previous precollege students made that shows all the different places all over the word that programmers are collaborating from. [Octomaps](http://octomaps.com/) -- enter in Ruby for Repository Owner and Ruby for Repository name and you'll see all the people contributing to the language you're learning. 
+ GitHub is a service that allows us to store and share our code online and it uses this special language we can use on our command line or terminal called git. 
+ What makes git really powerful is that it's a version control system. It's like a time machine for your code because every save is a snapshot to what your code says right then. 
+ This is helpful to us as developers because if we add a feature and it doesn't work properly or your users don't like it you can just role back to what your app looked like at a previous moment in time. 
+ When you click the Nitrous button on Learn to work on a lab you're actually interacting with git and GitHub. The process of forking and cloning, which we'll cover more in depth shortly, is automatically happening for you. Forking and cloning is a huge part of a developer workflow, so we wanted to teach you guys how that button actually works.

## Lesson Plan

### Part I.
+ Navigate to Week 2 > Git and GitHub > Study Guide 
  + We'll use this to get code from GitHub and bring it down to our computers.
+ Click "Fork this lab" link to open GitHub repository.
  + Explain what a repository is.
+ Click "Fork" button in the top right corner of the GitHub page.
  + Explain what forking is. (Like making a photocopy of a handout.). You're making your own version of somebody else's work so you can use and add to it without it affecting the original version. 
+ At "Where should we fork this repository?" popup, select own account.
+ GitHub then redirects to a page with your username/lab-name in URL. 
  + Your account now has a copy on GitHub.
  + You can't edit it on your computer in Sublime Text just yet.
+ Explain what cloning a repository is.
+ On the right sidebar, find the "clone URL" input box, and make sure that it says "HTTPS clone URL." 
  + Copy the URL.
+ In terminal, in your Development directory, enter `git clone` and paste the URL.
+ Terminal will prompt you to enter your username and password. 
+ After, enter `ls` and you should see the new directory. `cd` into it. 
+ Students do!

### Part II
+ Make a change to the lab. Let's pretend we're done or we've finished making our changes or completing our lab. Now we need to put those changes back ong GitHub so that others can see them.
  + `git status` -- We see red here because we've changed our files, but we have to tell git that we actually care about and want to track these files.
  + `git add .` -- (Nitrous may require you use -A instead of .). This is a good time to remind students about the . and .. notation of the command line. Now the files we've changed are green because we've said, "Hey git, I care about these files"
  + `git commit -m "Your message here."` -- Saving your files with git is a two step process. We've told git we want to track our files, but now we need to finalize the changes made and take our snapshot of this moment in history. We add a -m flag and a string in quotes afterward so we can put a short reminder message of what the code we just changed just as a reminder to ourselves and for other programmers who may want to look at our code. 
  + `git push origin master` -- So far, everything we've done has just saved our code to our personal computers. The last step is to update GitHub with the most current version. Origin is just a shorthand for the link back to GitHub so we don't have to write it out every time. We'll go more in depth into what master means later, but it's just saying use the main version of this code. 
+ Check on GitHub.
+ Explain and model a __pull request__. 
+ Students do!

## Conclusion / So What?
+ Two words: Open Source. There are over eight million people who use GitHub to store their code. Having a free account on GitHub means that anyone in the community can fork or clone your repositories and make changes to or contribute to your codebase. It's all about people building publicly accessible applications together.

## Hints and Hurdles
+ Visuals can be very helpful in explaining forking and cloning. Draw the workflow on the board:

<img src="https://after-school-assets.s3.amazonaws.com/GitHub_workflow.jpg" width="400px">

+ Version control explanation using video game analogy works well.
+ I do/you do/we do to break up Git lecture.
+ This may be a good time to have students take turns writing out the commands on white boards in order of the steps because they may not remember after just one pass. 
 
## Additional Media
+ [Trending GitHub repositories](https://GitHub.com/trending?l=ruby) - Find what Ruby repositories the GitHub community is most excited about today.

## Off Screen Fun
+ Take breaks for games and team building. Here are a bunch of [games we love](https://docs.google.com/a/flatironschool.com/document/d/1SWyV9LjCEnV89Zbly-Zfgoy7ZiofSWoo3QGfwvJDc64/).