# Trundler
## Two sided market place Rails app

### [Heroku Link](https://ancient-citadel-81275.herokuapp.com/)(does not currently work)

### The Problem
Numerous people are not able to leave the house or people are too busy with their everyday lives to spend hours shopping for the weeks groceries. Also there are people who are looking for extra cash with a small job. Trundler gives people that option.

### The Solution
Trundler is a platform that allows an individual to advertise their weekly grocery list and pay someone else to purchase and drop off the required groceries. Trundler connects people who need groceries with people who need work. Trundler has a chat feature that allows the shopper to contact the user if a given item is not available and allows the user to choose an alternative. The chat feature also allows the user to contact the shopper and adjust the drop off address and time.

### Design Process

Initially I wanted an app that was green and resembled a market place with simple layout that was easy for people to navigate.
Unfortunately my artsy eye was overly artsy and the design was too complicated.

![initial Figma](/app/assets/images/readme/Figma-init.png)

### User stories
![Db](/app/assets/images/readme/Trello.png)
The User stories were fairly straight forward as I believe that a large number of the situations would be covered by the apps features. To possibly highlight some problems I created a couple of User workflow diagrams to show any possible problems that could arise.
<br>
#### Work Flow Diagrams
The first workflow diagram shows the normal path throught
![User workflow](/app/assets/images/readme/User-workflow.png)


![App Workflow](/app/assets/images/readme/App-workflow.png)

#### Figma
![Full Figma](/app/assets/images/readme/Figma-total.png)



#### DB Design
![Database](/apps/assets/images/readme/Database.png)

### Code Reviews


### Gems
- Devise
- Pundit
- Rspec
- Stripe
- dotenv

### Challenges
#### Devise
Friday May the fourth will be a day that I will long remember. Many times whilst learning to code I have hit hurdles but this one made me question what I was even doing here.

It all began with 'Shrine'. I was undable to get the users profile image to display, regardless of what syntax I tried it did not work. It took numerous hours of trying and ended up with my Users and Users-profile tables no longer recognising each other.

I ended up restarting the project rm -rf Trundler. Unfortunately that meant that my near finished README died with it. Long story short, I learnt that I had not read through the tutorial properly and that I had left a line of code out of my profile model ":Attachment.new(:image)" that stores the image in a way that can be later recognised by the model. Lession one, take your time and read everything

#### Heroku
I had not completed all that much, three static pages and two database tables, surely Heroku would be able to handle that first push. To my demise it hasn't worked and I have spent the past three hours attempting to solve it. Devise.secret_key was not set, so I set it. Same error. Precompilling failed, i rails assets:procompile. Same error. I have assumed the fetal position and don't plan on leaving until I'm fed beer and donuts. 3 hours later I'm still awaiting said donuts.

It turns out that perhaps I am unable to push to Heroku from my home network, because as soon as I tried when I arrived at the Academy Monday morning it worked.

Come Thursday and Version 2.5 of Trundler, 

####
