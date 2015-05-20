## DAY-07 HTML 

### SWBATs
+ Structure an HTML page using doctype, html, head, title, and body tags
+ Add an image, link, paragraph text, and header text to a page
+ Create an ordered and unordered list using the ol, ul, li tags
+ Organize sections of HTML with div tags

### Motivation / Why Should You Care?
+ Start with an altered Tweet from a celebrity, which you've changed using Chrome's Developer Tools. For exmaple, you can have Justin Bieber tweet: “I love Flatiron School and coding SO SO much!,” or President Obama, "I am Barack Obama and I approve the Flatiron School." Tell students they'll know how to do that by the end of the lesson.
+ So far we've learned only about backend languages, Ruby in particular. How do we control what we see, though? That's where front-end programming comes in!
+ Ask students for their favorite websites and bring it up on the screen and click `view source`.
  + Students can go to a website of their choice on their own computers and right click and see the source code.
+ Web pages are made up of two things: HTML and CSS. Every single web page on the internet contains HTML and CSS.
+ HTML stands for Hypertext Markup Language, and **every single website** on the internet is written in HTML. Every. Single. Page. HTML provides the skeleton for websites and organizes the different elements on a page into categories like image, paragraph, and title. HTML doesn’t have anything to do with the layout of text on a page or how the page looks. All it does is tell the browser what different types of content is on the page.
+ We use HTML to mark a navigation bar, tell the browser that this piece of content is an article, this is a caption related to this image, this is a menu with items on it, etc.
+ Ask the students why is this important.
  + I can simply look at a page to determine what type of content everything is.
  + Computers are stupid and can’t infer knowledge the way we can. Semantic tags let computers know exactly what's what. Web crawlers like Google’s use HTML to actual determine what text on a page is content, which helps Google put the appropriate content in the search results you see. Services like Pocket and Embedly use tags to pull certain parts of an article to save to your reading list, without pulling the entire site.


### Lesson Plan
+ With the class, start by building out a website. Prompt students for topic for the website.
+ Prompt students for suggestions of what to put on a page.
+ Model how to create an html file:
  + `touch index.html`, then open in Sublime and the browser.
+ Add an h1 tag to show a headline. Explain how opening and closing tags work and where content goes.
+ Model, explain and have students implement:
  + <!doctype html>
  + head tag
  + title tag
  + body tag
  + h1 - h6 tags
  + p tag
  + img tag
  + a tag
  + unordered and ordered lists
  + div tag
+ Show HTML5 documentation and all the other tag possibilities there are.

### Conclusion / So What?
+ The way a website looks is vital to the user having a good experience of it. If you navigate to a website that looks like it was built in 1992, you're much less likely to take it seriously. The first step in making sure your website will look good is making sure the content is appropriately structured with the proper HTML tags. The next step is giving it visual flair and style using CSS.

### Hints and Hurdles
+ Reviewing the Raccoon/Puma todo in depth is a good way to keep object orientation fresh.
+ Emphasize styling and indentation best practices with HTML
+ Remind students about P.E.P. - encourage them to use Google to find solutions to their problems first.
+ Set the expectation that HTML/CSS is a lot of playing and messing around and figuring things out by trial and error.
