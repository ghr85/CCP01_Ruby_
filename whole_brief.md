# Project - Web Programming with Ruby

Over the next week you will build an app to consolidate and expand on everything you have learned:

* Object oriented programming with Ruby
* Test Driven Development
* Web Programming (REST, MVC)
* Interacting with a PostgreSQL database (CRUD)

## Rules

The project must be built using only:

* HTML / CSS
* Ruby
* Sinatra
* PostgreSQL and the PG gem

It must **NOT** use:

* Any Object Relational Mapper (e.g. ActiveRecord)
* JavaScript. At all. Don't even think about it.
* Any pre-built CSS libraries, such as Bootstrap.
* Authentication. Assume that the user already has secure access to the app.

Many of these will be covered later in the course. Do not make any attempt to use them this week, even if you've used them before.

Make lots of little (but sensible!) git commits. The number of commits in your final submission is one of the criteria your work will be judged on.


## Briefs

These briefs detail what is expected of you, including an MVP. Note that the MVP is the **Minimum** Viable Product. You are strongly encouraged to go beyond these specifications, and some possible extensions are provided.

Talk through your ideas with an instructor during the planning process, and before you begin coding.

### Spending Tracker

Build an app that allows a user to track their spending.

#### MVP

* The app should allow the user to create, edit and delete merchants, e.g. Tesco, Amazon, ScotRail
* The app should allow the user to create, edit and delete tags for their spending, e.g. groceries, entertainment, transport
* The user should be able to assign tags and merchants to a transaction, as well as an amount spent on each transaction.
* The app should display all the transactions a user has made in a single view, with each transaction's amount, merchant and tag, and a total for all transactions.

[Full Brief](project_briefs/money_tracker.md)

### Shop Inventory

Build an app which allows a shopkeeper to track their shop's inventory. This is not an app which the customer will see, it is an admin/management app for the shop workers.

#### MVP

* The inventory should track individual products, including a name, description, stock quantity, buying cost, and selling price.
* The inventory should track manufacturers, including a name and any other appropriate details.
* The shop can sell anything you like, but you should be able to create, edit and delete manufacturers and products separately.
  * This might mean that it makes more sense for a car shop to track makes and models of cars. Or a bookstore might sell books by author, or by publisher, and not by manufacturer. You are free to name classes and tables as appropriate to your project.
* Show an inventory page, listing all the details for all the products in stock in a single view.
* As well as showing stock quantity as a number, the app should visually highlight "low stock" and "out of stock" items to the user.

[Full Brief](project_briefs/shop_inventory.md)

### Gym

A local gym has asked you to build a piece of software to help them to manage memberships, and register members for classes.

#### MVP

* The app should allow the gym to create / edit / delete members
* The app should allow the gym to create / edit / delete classes
* The app should allow the gym to add members to specific classes
* The app should show a list of all upcoming classes
* The app should show all members that are registered for a particular class

[Full Brief](project_briefs/gym.md)

### Travel Bucket List    

Build an app to track someone's travel adventures.

#### MVP

* The app should allow the user to track countries and cities they want to visit and those they have visited.
* The user should be able to create, edit and delete countries
* Each country should have one or more cities to visit
* The user should be able to create, edit and delete cities
* The app should allow the user to mark destinations as visited or still to see

[Full Brief](project_briefs/travel_bucket_list.md)

## Submission

Submit a link to your Github repo through the Homework Submission form as soon as the repo has been created.

***(You should do this as soon as you have decided on your project)***

Your code will be reviewed with an instructor on Wednesday afternoon.

## Presentation

Presentations will be held on Thursday. You will have 10 minutes to present your work, with 5 minutes for questions.

We expect you to:

* Show your sketches, notes, diagrams, wireframes and user planning
* Demonstrate your app's functionality
* Talk about some code that you are particularly proud of
* Highlight your main learning points, problems you overcame, what you would like to do if you had more time

Do not:

* Talk through every single line of code
* Go over the time limit

## Asking for help

The instructional team will be on hand for technical assistance, but you are strongly encouraged to take this opportunity to practise self-sufficiency, as will be expected of you as a professional software developer.

Before asking an instructor for help this week, you should be ready to answer the following questions:

* What are you trying to achieve?
* What do you think the problem is?
* What have you tried so far?
* What did Google say about your error message?

## Attendance

The cohort will meet at the usual time every morning. Your attendance is recorded every day as normal.

## PDA Reminder

Remember to gather evidence for your PDA this week. This should only take 5 minutes:

* Go to your [PDA Checklist](https://github.com/codeclan/pda/tree/master/Student%20Checklist)
* Submit your PDA evidence (screenshots, etc.) to your own PDA repo
