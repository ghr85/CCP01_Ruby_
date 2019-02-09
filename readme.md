# Codeclan Week 04 Day 04
# Ruby Solo Project  (Money Tracker Option)
##  Rex Money Tracker

Rex is an app which allows a user to track their spending habits.


### Target Demographic (TD)

Proto Persona Davina:
* 26 Years Old
* 18k Income - renting in Aberdeen
* College Educated
* Logistics Planner for Waste Management Plant


### TD Needs & Goals
* Wants to track finances
* Would like to save for a home
* Would like rainy day money set aside
* Wonders where her money has gone
* Wants to know she isn't working for nothing
* Wants to be reasonably frugal


### Functionality

* Create, Read, Update, Delete Transactions
* Create, Read, Update, Delete Merchants
* Create, Read, Update, Delete Tags

## Order of Approach

* Read the instructions :white_check_mark:
* Read the instructions again...yes. Because how much time will you waste if you misinterpret. :white_check_mark:
* Create folder layout and headers - COMMIT!
* Create user persona -> user journey : This will feed you the data and methods to satisfy user needs.:white_check_mark:
* Create wireframe sketch to ensure that views cater to above :white_check_mark:
* Decide on what logic you'll need, plan classes, attributes, methods, tests :white_check_mark:
* Recheck that plan matches user needs FOR THIS ITERATION :white_check_mark:
* Begin build - start with concretes then work your way up: SQL runner>Database Schema>DB>seed data - get these working first.:white_check_mark:
* The controller defines the routes that will be taken upon HTTP method :white_check_mark:
* Require Sinatra and relevant tools in your controller file :white_check_mark:
* Create your specs file for testing model logic - start with has attr? etc. then shoot for logic -remember to cover negative cases. :white_check_mark:
* Create your logic file in model folder - keep your variable names tight :white_check_mark:
* Test that these work first of all :white_check_mark:
* Create your view folder :white_check_mark:
* Layout is your template housing for all other page eventualities :white_check_mark:
* Create other page eventualities :white_check_mark:
* Repeat for next iterative cycle, focus on functionality before moving to CSS
* Style it up with CSS and polish

### Notes

* We were explicitly told to develop iteratively for this one to reflect real life situations. Resist the urge to plan for future states, build MVP functionality, then extension functionality, then plan and build bells and whistles.
* Remember that require is used for library items, require relative is needed for project files.
* Again, time wasted on a requirements issue. Other controllers need to be required from main controller to work!
* Remember that the 'name' attribute on a form points directly to the database mapping.
* You can't use an anchor to generate a post action(without JS)
* Requiring css requires you to declare a type attribute in link
* Remember to create an object if you want to access the data, you're confusing a hash with an object that is (for the most part) a hash.

### Files

* consider_the_user.md - notes on UX and the application of.
* whole_brief.md - Whole project brief
* money_tracker.md - Specific project requirements
* readme.md - does what it says on the tin
* furious_styles.css - Styling for the web app -  if I'm lucky.
* merchant_spec - test specification for merchant model class



> "Money be green!"
