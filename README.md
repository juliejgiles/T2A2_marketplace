## **StickerStation - two-sided marketplace app**
For buying and selling stickers
-------------------
-------------------
### Julie Giles

-------------------
-------------------

### **What is the problem and why does it need solving? (R7, R8)**
The problem I am trying to solve is to create a marketplace platform dedicated to the buying and selling of stickers.

This is a problem that needs solving because the current platforms that sell stickers (such as Etsy, Redbubble, Ebay, Amazon are not exclusively dedicated to selling stickers, and this means that the listing fees and commissions that they charge are disproportionate when considering that stickers are at a lower price point than other craft/art items. For instance, commissions such as $0.20 per listing may seem standard for $20-30 items but it can end up being almost 10% of a sticker's price.

The marketplace app I have built allows sticker creators to sell their stickers on a platform that is free of charge so that they do not have to pay listing fees. It is also a one-stop-shop for buyers who are looking for stickers who do not want to browse for non-sticker items on a platform.

### **Link to deployed app (R9)**

https://stickerstation.herokuapp.com/
![Image of heroku URL](../../docs/heroku.png)

### **Link to GitHub repository (R10)**

https://github.com/juliejgiles/T2A2_marketplace
![Image of github profile](../../docs/github.png)

### **Description of Marketplace App(R11)**

***Purpose***

To create a two-sided marketplace that allow users to either sell or buy stickers or both. The platform is dedicated exclusively to selling and buying stickers.

***Functionality/features***

|Functionality | Description|
|---|---|
| Accounts | Users are able to create new accounts when signing up, and must be logged in to create new listings of stickers, or purchase stickers. All users can view items without having to sign up or log in, however if they click on an item, they will need to sign in to view the individual sticker and see the options to message the seller or put the sticker in the shopping cart. A user can change/update their profile at any time.|
| Sticker listings | Once a user has logged in, they are able to create a new sticker listing by inserting the required information about the sticker, and uploading an image if they choose to. If they do not upload an image, a default placeholder will be added on their behalf. Sticker listings can be updated or edited but only by the person that created the listing and that person must be logged in to see the edit or delete options of the listing. Once a user has logged out, they will still see all sticker listings. |
| Messages | Buyers and sellers can message each other regarding a sticker listing, and their messages are shown along with the time and name of the person sending the message.  |
|Shopping cart | A user who has logged in can place an item in their shopping cart. They can update the cart or delete individual cart items or clear the whole cart. The navbar has a button which counts how many items they have in the cart, and the button links to the cart for easy access. The shopping cart calculates the total cost of all items in the cart.|
|Search | Anyone can search for an item without having to log in first (to help increase the chance of a user seeing a sticker they like). The search bar is shown on every page of the app, and allows users to enter keywords which will search through the title and description of stickers. |

***Sitemap***

![Image of sitemap of marketplace app](../../docs/SitemapT2A2-Page-1.jpg)

***Screenshots***

Index page
![Image of index page of marketplace app](../../docs/index.png)

In different viewports
![Image of index page in different viewports](../../docs/responsive1.png)

Individual listing pages
![Image of individual listing](../../docs/show.png)

Message board about a sticker listing 
![Image of message board](../../docs/messageboard.png)

Sign up form
![Image of sign up form](../../docs/signup.png)

Sticker recommendation links
![Image of sticker recommendation link](../../docs/recommendation.png)

Shopping cart
![Image of cart](../../docs/cart.png)


***Target audience***
The target audience are:
* people of all ages who enjoy browsing and/or buying stickers; 
* sticker designers or creators who want to sell their stickers.

***Tech Stack***

* Front-end: HTML5, CSS3, SCSS, Embedded Ruby, Bulma, Javascript.

* Back-end: Ruby 2.7.0, Ruby on Rails 6.1.0

* Database: Postgresql

* Deployment: Heroku

* Project management: Trello Board (see R20 below)

* DevOps: Git, Github, VS Code, Webpacker, Turbolinks, Bundler, Yarn, ResponsivelyApp, Balsamiq

* Ruby Gems: please see section R16 below
 

### **User stories (R12)**
A user that signs up can either buy, sell or do both, so there is no separate roles created between buyers and sellers. The below buying and selling functions can be carried out by any user that signs up an account. 

***Selling stickers***
* as a seller, I want do not want anyone else to edit or delete my sticker listings. 
* as a seller, I want to log in with my email and password to edit or delete my sticker listings. 
* as a seller, I want to log in first before seeing messages that have been sent to me. 
* as a seller, if I receive a message on teh app, I want to also see the time stamp of when the message was sent and who it was from.
* as a seller, I want to be able to create more than 1 account on the application. 
* as a seller, I want to update my details on my profile. 
* as a seller, I want to delete my account at any time. 
* as a seller, I want my new sticker listings to be featured in a section of the application to get the attention of buyers. 
* as a seller, I want users to see my sticker listings without having to sign in or sign up.
* as a seller, if someone wants to buy my sticker or message me, then they should have a user profile with the app. 
* as a seller, I want my listing to stay on the website after someone has purchased it because stickers are generally produced in large quantities and I don't want to continuously re-list my stickers.
* as a seller, I do not want others to access my account or change my profile information. 


***Buying a sticker***
* as a buyer, I want to see stickers without having to sign up or sign in. 
* as a buyer, I want to be able to search for stickers using keywords without having to sign up or sign in. 
* as a buyer, I want to see an image of the sticker, its title, description, material, and finish. 
* as a buyer, I want to send a message to the seller about a particular sticker listing. 
* as a buyer, I only want my messages to a seller to be shown to that seller and not be made public. 
* as a buyer, I want to be able to add stickers to a shopping cart and have the total cost calculated for me. 
* as a buyer, I want to be able to delete items from the shopping cart or clear the entire shopping cart. 
* as a buyer, I do not want others to access my account or change my profile information. 


### **Wireframes (R13)**

Index page

![Image of index page wireframe](../../docs/indexwireframe2.png)


Individual sticker listing page

![Image of individual listing page wireframe](../../docs/showwireframe.png)

Cart page

![Image of cart page wireframe](../../docs/cartwireframe.png)


Create new listing page

![Image of new listing page wireframe](../../docs/newwireframe.png)


Sign-up page

![Image of sign up page wireframe](../../docs/signupwireframe.png)

### **ERD (R14)**


Entity Relationship Diagram

![Image of ERD](../../docs/ERD.jpg)

### **High-level components of app (R15)**

StickerStation is a two-sided marketplace application that allows users to create listings for stickers, buy and sell stickers, and communicate via a messaging feature about a particular listing, and add items to a shopping cart which calculates the total cost for them. 

This application is created using the Ruby on Rails Model-View-Controller (MVC) framework, which separates the user interface (or visual logic) from the business logic. The database used is the Postgresql relational database which is used to store the sticker listing data, sticker images, user profile information, messages sent and timestamps. A search function is available on all pages of the application, which queries the database for words in a sticker's title or description which match the user's parameter that is entered into the search bar. The results (if there is a match) are rendered on the page once the search is run. 

The Devise Gem was used for authorisation purposes, to ensure that users were logged in to view certain pages (in this case the show page which contained individual listings with add to cart and message features). It also achieved authorisation to ensure that only a user who created a sticker listing may edit or delete that listing. 

The messaging system is based on a Message model and a Conversation model, with a nested routing structure. The Message model contains individual messages that are written by a user, whereas the Conversation model sets the scope by identifying the sender and recipient of the conversation. 

Users are able to upload images by way of the Carrierwave gem which is stored in an uploads folder in the application. The gem Minimagic resizes the pictures to thumbnail sizes for the index page, while the default size is used for the show individual listing pages. 



### **Third party services that the app will use (R16)**

* byebug (debugging tool - https://rubygems.org/gems/byebug/versions/9.0.6)

* cancan (for additional security and to create roles for admin, buyer, seller. Roles were not ultimately created in the app - https://github.com/ryanb/cancan)

* simple form (form styling tool used to style the user log in and sign up forms, and listing creation form, listing editing form, and user profile update form- https://github.com/heartcombo/simple_form )

* devise (Used for User Authentication, creates sign-up and sign-in forms and creates user accounts for privacy. Devise protects database integrity by ensuring that only users who have created an account and have logged in successfully may view certain pages, by comparing the current_user.id with the id of other models in the Application who are trying to access that information (eg message.recipient_id). It also carries out username and password authentication. - https://github.com/heartcombo/devise ) 

* sassc (allows for SCSS or SASS syntax to be compiled into CSS in this app - https://github.com/sass/sassc-ruby)

* carrierwave ( lets users upload images to the app easily - https://github.com/carrierwaveuploader/carrierwave)

* minimagick (lets users transform images that they're uploading - https://github.com/minimagick/minimagick )

* font-awesome-sass (adds font-awesome, which is used to create icons throughout the app, such as the shopping cart icon, magnifying glasses icon, heart icon and others - https://github.com/FortAwesome/font-awesome-sass)

* coffee-script-source (used to compile javascript in the app - https://rubygems.org/gems/coffee-script-source/versions/1.10.0)

* heroku (a container-based cloud Platofrm as a PaaS service which allows the application to be deployed, hosted and managed on their server.)

### **Project models and relationships/active record associations (R17)**

A User has many stickers, and a Sticker belongs to a User. 

A Sticker has many CartItems, and a CartItem belongs to a sticker. 

A cart has many CartItems, and a CartItem belongs to a Cart. 

A CartItem belongs to a User, through the Cart.

A Conversation has many messages, and a message belongs to a conversation. 

A User has many Conversations, and a Conversation belongs to a User. 

A User has many Messages, and a Message belongs to a User. 


```class CartItem < ApplicationRecord
  belongs_to :sticker
  belongs_to :cart
  has_one :user, through: :cart
  end```

```class Cart < ApplicationRecord
has_many :cart_items, dependent: :destroy
end```

```class Conversation < ApplicationRecord
    belongs_to :sender, foreign_key: :sender_id, class_name: "User"
    belongs_to :recipient, foreign_key: :recipient_id, class_name: "User"
    has_many :messages
end
```

```class Message < ApplicationRecord
    belongs_to :conversation
    belongs_to :user
end
```

```class Sticker < ApplicationRecord
    belongs_to :user, optional: true
    has_many :cart_items, dependent: :destroy
end
```

```class User < ApplicationRecord
  has_many :stickers
  has_many :conversations
  has_many :messages
 end
```


### **Database relations (R18)**

**User**

The user_id primary key is used as a foreign key in the Conversation, Message, Cart and Stickers model. 

**Cart & Cart Item**
The Cart can have many optional CartItems, but if there is a CartItem in existence, then it must belong to a Cart, and as such it references the Cart_id as a foreign key. 

The CartItem references the sticker_id as a foreign key so that the correct product is identified once it has been added as a cart item. 

**Conversation and messages**

A conversation can have many optional Messages, but if there is a Message, it must belong to a Conversation, which is why it references the conversation_id as a foreign key. A message also refers to the user_id as a foreign key.

**Sticker** 
A sticker references the user_id as a foreign key because the app needs to know who created each sticker, for authorisation purposes. A user may have many optional stickers, or choose to have none. But if a sticker exists, then it must reference the user_id so that its author is identified. 


### **Database schema design(R19)**

***Users***
email: string
password: string
name: string
username: string
update_at: datetime
quantity: integer

***Stickers***
user_id: references
title: string
description: string
material: string
finish: string
image: json
update_at: datetime
quantity: integer

***Conversations***
sender_id: references
recipient_id: references
update_at: datetime
quantity: integer

***Messages***
conversation_id: references
user_id: references
body: text
recipient_id: references
update_at: datetime
quantity: integer

***Cart***
update_at: datetime
quantity: integer

***Cart Items***
sticker_id: references
cart_id: references
created_at: datetime
update_at: datetime
quantity: integer


### **Tracking and allocating tasks in app (R20)**

***Tools used***

Trello board was used to manage this project and it was structured based on the agile methodology with categories such as:
* Backlog
* Tasks currently being worked on
* Bugs
* Testing 
* Done

Branching in Git was used where a new feature was created in a separate branch before being merged only once it was functioning. 

Link to Trello board: https://trello.com/b/regY36ov/two-sided-marketplace-sticker-station

![Image of trello board](../../docs/trelloboard.png)

***Process used***
Cards were set up in the trello board, where each card represented a deliverable in the project. The steps required to achieve the deliverable were set out in a to-do list within the card. Any bugs or additional steps required were logged into the Trello board to ensure they were not overlooked. Due dates were set for main deliverables.

As this was not a team project, other project management tools were not required.