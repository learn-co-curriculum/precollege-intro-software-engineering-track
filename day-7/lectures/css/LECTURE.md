# DAY-07 CSS 

## Objective
*** Students will be able to create their own custom CSS to style a website.

## SWBATs
+ Explain the purpose and structure of CSS
+ Link an html file to CSS
+ Select specific content to style using tag names, classes, and ids
+ Center text using the text-align property
+ Modify content placement with margin, padding, and border properties
+ Change image size using height and width properties
+ Add background colors using the background property
+ Use hexadecimal, rgba, and rgb color values
+ Change the font of text using font-size font-family and color properties
+ Move chunks of content around the page using the float property
+ Master reading documentation of CSS properties

## Motivation / Why Should You Care?
+ Pull up Justin Bieber's (or your celebrity of choice) Twitter with all the stylesheets unlinked using Developer Tools. Explain that this is his website with JUST HTML. Enable different pieces of CSS to show how the style changes.
+ They say don't judge a book by its cover, but a poorly designed website can be a big turnoff for a user who can easily navigate away from it with the click of a button. CSS is the key to getting your page looking good, and that will keep people coming back to your site again and again. The more professional and well-designed your site is, the more likely users are to take it seriously.
+ Explain that we write CSS in separate files, so that each file in our website has one job and one job only.

## Lesson Plan
+ Start with CSS walkthrough on the screen, showing the uncompleted and completed versions, [found here](https://github.com/learn-co-curriculum/css-walkthrough-hs).
+ Students fork and clone walkthrough and open `index.html` in browser and Sublime.
+ When you first open the file in the broswer, it's just a bunch of text on a page. We want to make it look snazy (like on the [solution](https://github.com/learn-co-curriculum/css-walkthrough-hs/tree/solution))
+ First we have to link the CSS file to HTML file with `<link rel=”stylesheet” type=”text/css” href=”css/style.css”>`.
+ Now we want to make all the H1 tags largers and the font color to blue with 
```css
  h1 {font-size: 40px; 
    color: blue;
  }
```
  * The `h1` is our CSS selector - the HTML we've selected to add syling to. 
  * inside the curly braces, we add a CSS property and a value for that property. `font-size` and `color` are two different properties.
  * The semi-colon and colon are super important.
+ Change h2 font size and color with hexadecimal colors.
```css
  h2 {
     color: #800000;
  }
```
  * A hexadecimal color is another way to write color so you can be more specific with color tone. In this case, the first two places are the amount of red, the next two the amount of green, and then the amount of blue.
+ Change kid meme to be centered with a green border using border-style, border-color, and a div wrapper around the image with `class="center"` attribute: 
```
.center {
  text-align: center;
}
```
  * Here we're using a class as our CSS selector. the `.` tells our css file to look for a class called `center` defined in our HTML. We can use classes to add the same styling to a whole bunch of things. This becomes useful in situation where you have 5 paragraphs, and you want the font color of every other paragraph to be purple. You can add classes to the p tags, and voila!
  * We have to apply the styling to the div surrouding the image because the text-align property doesn't work on images 
+ Change font to Wingdings using `<div id="welcome">` in HTML and Google fonts.
```css
#welcome {
  font-family: Wingdings;
}
  ```
  * `font-family` property changes fonts.
+ Change background color to red and font color to white in the paragraph where we talk about what we can change using CSS (just the list.
```css
  .css-list {
    background-color: red;
    color: white;
  }

```
  * We have a class `css-list` that we're adding stlying
  * `background-color` changes the color of the background
+ Review using ids and classes to style chunks of code.
  * an ID must be unique and can only be used once in your HTML
  * classes are used to group different chunks of HTML and add the same styling to it.
+ Show students [references they can use](https://developer.mozilla.org/en-US/docs/Web/CSS/Reference) to look up other CSS properties.

### Conclusion / So What?
+ Congratulations! You now have both front-end and back-end skills in your web development arsenal. You just about know everything you need to know to build your own web application. Now you just have to put them all together. The key to getting your front-end to play nicely with the back-end is a Ruby framework called Sinatra.

### Hints and Hurdles
+ Feel free to give students an introduction to Bootstrap during this class. Emphasize that it's important to be able to write HTML and CSS by hand, but that Bootstrap allows us to easily style our websites since not every developer has the design skills necessary to make something look snazzy.

### On Learn
+ Labs:
  + [Empire State](https://github.com/learn-co-curriculum/hs-empire-state-css-challenge)
  + [My Little Rainbow](https://github.com/learn-co-curriculum/hs-my-little-rainbow) 
  + [Graffiti Override](https://github.com/learn-co-curriculum/hs-css-graffiti-override)
  + [Zetsy](https://github.com/learn-co-curriculum/hs-zetsy)
  + [ZHW Shoes](https://github.com/learn-co-curriculum/hs-zhw-shoes-layout)
  + [CSS Issue Bot](https://github.com/learn-co-curriculum/css-issue-bot-9000)
+ Stretch Labs:
  + [Concentration Game](https://github.com/learn-co-curriculum/fe-concentration-game)
  + [eCard Site Layout](https://github.com/learn-co-curriculum/ecard-site-layout)
  + [Animal Save](https://github.com/learn-co-curriculum/animal-save)
  + [JQuery Selectors](https://github.com/learn-co-curriculum/fe-jquery-exploring-selectors)
  + [JQuery Methods](https://github.com/learn-co-curriculum/fe-jquery-exploring-methods)
  
  
