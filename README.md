# Trundler
## Two sided market place Rails app

### [Heroku Link](https://polar-harbor-19646.herokuapp.com/users/sign_in)

### The Problem
Numerous people are not able to leave the house or people are too busy with their everyday lives to spend hours shopping for the weeks groceries. Also there are people who are looking for extra cash with a small job. Trundler gives people that option.

### The Solution
Trundler is a platform that allows an individual to advertise their weekly grocery list and pay someone else to purchase and drop off the required groceries. Trundler connects people who need groceries with people who need work. Trundler has a chat feature that allows the shopper to contact the user if a given item is not available and allows the user to choose an alternative. The chat feature also allows the user to contact the shopper and adjust the drop off address and time.

### Design Process

Initially I wanted an app that was green and resembled a market place with simple layout that was easy for people to navigate.
Unfortunately my artsy eye was overly artsy and the design was too complicated.

#### Fonts
Initially I had my heart set on Open Sans Condenced for the majority of my text and Pacifico for my logo font.
![Font 1](/app/assets/images/Opens-Sans-Condenced.png)
![Font 2](/app/assets/images/pacifico.png)

#### Design one.
With design number two I was determined to keep the font from the initial design for the heading and to try a different colour pallette. 
![initial Figma](/app/assets/images/Figma-two.png)
#### Colour scheme.
![initial Figma](/app/assets/images/initial-colours.png)


#### Design two.
![Second Figma design](/app/assets/images/Figma-init.png)

So after not being happy with design two and consulting my design team (thankyou Gretch) it turns out that it did't work, again too busy and it made it difficult to read the text in front.

#### Final Design
For the final design I went for a much simpler based around an image found on unsplash. The design would use the fonts Open Sans Condensed and Satisfy and colours from the unsplash

![Second Figma design](/app/assets/images/final-figma.png)
![Second Figma design](/app/assets/images/final-figma2.png)
![Full Figma](/app/assets/images/Figma-total.png)
#### Final font and colour scheme
![initial Figma](/app/assets/images/Satisfy.png)
![initial Figma](/app/assets/images/final-colour.png)

<br>

### User stories
The User stories were fairly straight forward as I believe that a large number of the situations would be covered by the apps features. To possibly highlight some problems I created a couple of User workflow diagrams to show any possible problems that could arise.

![Db](/app/assets/images/Trello.png)



<br>





#### Work Flow Diagrams
The first workflow diagram shows the normal process a user would undergo to sign up/login create a grocery list, have a shopper (name for the user who purchases and delivers the grocery list) purchase and deliver required items.

![User workflow](/app/assets/images/User-workflow.png)

#### App features
 - A simple list system for a user to use in order to create a shopping list and advertise on a feed.
 - An readable feed for a shopper to pick out shopping lists in their local area.
 - A payment system that makes it easy for the shopper and user to exchange money for services.
 - A contact us page that would allow users to contact myself regarding issues that may arise.
 - An in app messaging system that allows the shopper to contact the user if an item is not available (preventing the exchanging of phone numbers)
 - A map system that would be able to show the shopper the prefered stores for the grocery list and for the delivery address.
 - An authentication system that would to allow a user to log in and have a secure account.
- An authourisation system that would prevent one user from modifying another users shopping list.

![App Workflow](/app/assets/images/App-workflow.png)



#### DB Design
![Database](/app/assets/images/Database.png)

### Gems
- Devise
- Pundit
- Rspec
- Stripe
- dotenv

### Project plan
- Initial design (erd, figma/wireframes and wokrflow diagrams) completed by Wednesday

### Challenges
#### Devise
Friday May the fourth will be a day that I will long remember. Many times whilst learning to code I have hit hurdles but this one made me question what I was even doing here.

It all began with 'Shrine'. I was undable to get the users profile image to display, regardless of what syntax I tried it did not work. It took numerous hours of trying and ended up with my Users and Users-profile tables no longer recognising each other.

I ended up restarting the project rm -rf Trundler. Unfortunately that meant that my near finished README died with it. Long story short, I learnt that I had not read through the tutorial properly and that I had left a line of code out of my profile model ":Attachment.new(:image)" that stores the image in a way that can be later recognised by the model. Lession one, take your time and read everything

#### Heroku
I had not completed all that much, three static pages and two database tables, surely Heroku would be able to handle that first push. To my demise it hasn't worked and I have spent the past three hours attempting to solve it. Devise.secret_key was not set, so I set it. Same error. Precompilling failed, i rails assets:procompile. Same error. I have assumed the fetal position and don't plan on leaving until I'm fed beer and donuts. 3 hours later I'm still awaiting said donuts.

It turns out that perhaps I am unable to push to Heroku from my home network, because as soon as I tried when I arrived at the Academy Monday morning it worked.

Come Thursday and Version 2.5 of Trundler, 
<br>

### Code Reviews
Due to the monstrosity of this assignment I had spent a lot of time perusing through other peoples code and having others look/ scrutenise through mine. 
-Glenn
-