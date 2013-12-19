---
layout: post
title: "Redesigning jibli - lessons learned form Hack Design Part 1"
date: 2013-03-06 20:01
comments: true
categories: [UI Design, jib.li]
---

As many programmers, I have always thought  web design is a
discipline best reserved for people doing art and design. 
You know, the hipster with his MacBook, his pletora of Adobe suites, 
and the huge time spent learning to use them.

I come from a background of system administration and networking, always
fascinated by the obscure backend's thing happening behind what you 
see on your screen. Furthermore, I started web development for the sole purpose 
of building <a href="http://jib.li">Jib.li</a>, as a CoFounder and CTO on this 
project, and as a team which had no money to hire a full time designer.


Needless to say I boarded the UI Design ship on the wrong foot.

In this first article I am going to share my experience on how I got passionate 
about creating and designing a User Interface and what I learned from all the
resources shared on HN and [ Hack Design ][ hackdesign ] lessons which helped me redesign Jib.li.

[ hackdesign ]: http://hackdesign.org/courses/

<!-- more -->


#### Before
{% img hover center /images/jibli_old.png 390 %}
#### After
{% img hover center /images/jibli_new.png 400 %}

## Where to start ?

We launched the public beta of jib.li on October 2012. A few weeks later we had had 
plenty of feedback and proposals for new features.

For strategic reasons, we chose to start Jib.li with no registering process and just a "Connect with Facebook" instead.


We had no money to make a "how it works" video we could show
next to the home page form, like many startups do when they launch their
product. We only had a [teaser video][ teaser video ] that we made before starting this project 
where you see a bunch of people (our team at that time) pitching the idea.


The home page actually [ looked ][ oldhome ] like many location based services and the 
typical workflow of a user was:

1. Fill in the "From" and "To" location fields

2. Choose what action to take: Send, Deliver 

3. A modal shows up to let him select a date depending on which action he chose

4. Redirecting the user to a listings results page

5. The user can then click on listings or create a new one if he's not satisified


We noticed that many people when they first reached the home page, where not able to figure out what to do next. 
To assist new users we used bootstrap tooltips everywhere, even on the action buttons.

On the graphic design aspect, we were just using a slightly customized [ bootstrap theme ][ cerulean ]


[ oldhome ]: http://jib.li/homeold   "Some styles are a little broken since we're migrating to the new design"
[ teaser video ]: http://www.youtube.com/watch?v=KOYTefUmygA    "Jib.li teaser video"
[ cerulean ]: http://bootswatch.com/cerulean/ 


## Getting inspiration

So after we decided it was time to have a fresh and better look, I saw the opportunity 
to start practicing what I have been learning on HN, Hack Design and [ About Face 3 ][ aboutface ] about 
UI/UX Design. It was also a good opportunity to stop frontend programming with spaghetti jQuery dom 
manipulation and start using AngularJS which devprived me of my sleep hours lately. 
(frontend programming will be the subject of an other article)


I think the most difficult step when you start working on something, no matter what kind
of project, is actually to **start**. For me it was no exception. I was certainly looking
for visual inspiration because a User Interface for a web application is first of all something 
we see before we touch and interact with. 

To help me filter out the overwhelming quantity of images, photos and visuals available on the internet, 
I made list of words that sum up what Jib.li was about and started combining those words in search queries
for images and photos.

I ended up with this one when looking for the words *bike* and *bag*, which seemed to summarize the ideas
of transportation, carrying and environment which jib.li is all about.

{% img center /images/hero_bike.jpg 300 %}

*This photo comes from this [ beautiful article ][ herobike ] by Dottie and all credits go to her.*

[ herobike ]: http://letsgorideabike.com/blog/2011/03/beautiful-bicycles-yuba-mundo-cargo-bike/#comment-823035149
[ aboutface ]: http://www.amazon.com/About-Face-Essentials-Interaction-Design/dp/0470084111


When I saw this one ideas started immediately flowing and I knew where to start.


## The color palette

The first thing I did was to choose a color palette. To do so, I used the inspiration photo
to [ extract a simple color palette.][ colorpalette ]

[ colorpalette ]: http://vimeo.com/7109253

{% img right /images/color_swatch.jpg %}

I actually repeated the process until I get a set of colors which validate these conditions:

* Have at most 3 main colors
* Have dark close to black color
* Have a light close to white color


This one has two main colors, a wide blue range and the yellow/gold one. Grays and white are
just desaturated and very light colors.


This should suffice to always have a color to pick from this palette instead of choosing
one from a color picker, and so basically when looking for black I just choose the darkest one and when looking for white I pick 
the most close to white. 

The wide range of blue colors made me choose the blue as the main color.

I was heavily inspired by this [ article ][ colors_article ] of Ian Storm Taylor, which also made me 
start using HSL (Hue, Saturation, Brightness) everywhere I wanted to get new colors from the palette.

[ colors_article ]: http://ianstormtaylor.com/design-tip-never-use-black/


## Rapid prototyping vs flat PSD design

One thing I learned in interactive design is that a User Interface can't possibly be represented as a flat image only.
[ Bret Victor made an excellent talk ][ bretvictor ] about the process of creation and the necessity to get immediate visual feedback.
My design process has been a mix of rapid prototyping and design exploration with [ chrome developers tools ][ chrometools ] then representing ideas in 
a PSD file as a reference for later.

Although I'm not going to talk much about frontend programming, this is the stack I prepared to quickly test ideas and move back and forth 
from prototype to PSD.

[ The stack ][ angustrap ] consists of: 

* Angular Seed project from AngularJS
* Stylesheets using Less
* Using git submodules to add frontend dependencies (Bootstrap, AngularUI, FontAwesome ... ) 

[ chrometools ]: https://developers.google.com/chrome-developer-tools/ 
[ angustrap ]: https://github.com/sp4ke/Angustrap.git
[ bretvictor ]: http://www.youtube.com/watch?v=PUv66718DII

Whenever I wanted to test some *behavior* feature I first tested it with Chrome, played
with styles and interactions, then tried to represent it as a layer in PSD. 

On the other hand, when trying to work on the *look* aspect of something, I prefered the PSD
approach first, which gives more freedom on the graphics.

{% img hover /images/jibli_design_1.jpg 50 %}
{% img hover /images/jibli_design_2.jpg 50 %}
{% img hover /images/jibli_design_3.jpg 50 %}
{% img hover /images/jibli_design_4.jpg 50 %}
{% img hover /images/jibli_design_5.jpg 50 %}
{% img hover /images/jibli_design_6.jpg 50 %}
{% img hover /images/jibli_design_7.jpg 50 %}
{% img hover /images/jibli_design_8.jpg 50 %}
{% img hover /images/jibli_design_9.jpg 50 %}
{% img hover /images/jibli_design_10.jpg 50 %}
{% img hover /images/jibli_design_11.jpg 50 %}



## End of Part 1

I hope some programmers who are interested about web design and don't know how
to start might find some insight from this article and the next ones. 

Part 2 will be about getting from prototype to stylesheets using chrome devtools, the importance of shadows and 
some tips I learned about textures and details.





