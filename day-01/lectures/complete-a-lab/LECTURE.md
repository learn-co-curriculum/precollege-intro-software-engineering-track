# How To Complete A Lab - Full Lecture

## Objective
***Students will be able to turn all the lights green in Learn without a full knowledge of Git.***

## SWABTS

+ students will know the CLI commands to complete a lab

## Motivation
We had you all make GitHub accounts in order to sign up for Learn. We'll talk a lot more about GitHub in the coming days, but it's important to note that GitHub is the standard in industry for developers to store their code. Companies use GitHub to assess if a developer can do the things they claim to know. You guys are going to start building out really robust digital portfolio of your work on GitHub, so it's important that you store all your completed labs and lessons on GitHub.

If you click on a lab in Learn, you'll notice all the lights on the right hand side. Those lights mark completion of a lesson or lab. It's important for you appropriately mark completion so that your teachers know how far along into the material you've gotten. It's also a great marker for you in your own coding progress.

## Lesson Plan 

+ The first light that says `Fork` - don't worry what `fork` means, we'll get to it in the coming days. All you need to turn this light green is to click the button that says `Open in Nitrous`.

+ The last light, the one that says `Pull Request` (again don't worry about what a `Pull Request` is, we'll get to that later!), just asks for your work to be submitted to GitHub so that Learn knows you're done. To do this, in terminal in the main directory of the lab enter `learn submit`. This will turn that last light green

+ If you worked with more than one other person, we know you all want credit for finishing the work. In that case, the person who has the work on their computer just needs to enter: `learn submit --team github,usernames`. If Beth worked with Carley and Joe, and Beth has the work on her computer, she would enter `learn submit --team carleygithub, joegithub`. This will change the lights on Learn for Carley and Joe, as well as put the code on Carley and Joe's GitHub accounts.

## Hints and Hurdles
+ It's important to note that students working together will run into issues if they all click `Open in Nitrous`. To take the example from above: If Beth, Carley and Joe all work together, and they do their work on Beth's computer, BUT Carley and Joe both clicked `Open in Nitrous`, when Beth does `learn submit --team ...` Carley and Joe will get credit on Learn but will not have the completed code on their GitHub. That `--team` flag makes a fork of Beth's work on Carley's and Joe's GitHub. If Carley and Joe have repos with the same name, it can't create another one.


## Conclusion 
Command Line is an incredibly valuable tool that lets you manipulate configuration files of your computer. It also lets you navigate your computer much faster than using Finder. We will also use terminal to run our code, so familiarity with it is imperative.

## Hints and Hurdles
+ `~` is the logged in state for that particular user: ever log in to a home or school computer as a specific user? Just like that.

+ The `Find the Missing Pet` lab really hammers home paths. This is an important concept for students as they begin to create HTML/CSS projects and then their sinatra apps at the end of the course. Paths are a complicated concept- let students know its ok if it doesn't make sense right away.

+ Helps to have students write out the instructions if they were moving one step at a time `cd code`, `cd labs` and then show them how they can shorten that `cd code/labs`.


