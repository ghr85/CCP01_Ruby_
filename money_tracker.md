### Spending Tracker

Build an app that allows a user to track their spending.

#### Inspired by:

Monzo, MoneyDashboard, lots of mobile/online banking apps

#### MVP

* The app should allow the user to create, edit and delete merchants, e.g. Tesco, Amazon, ScotRail
* The app should allow the user to create, edit and delete tags for their spending, e.g. groceries, entertainment, transport
* The user should be able to assign tags and merchants to a transaction, as well as an amount spent on each transaction.
* The app should display all the transactions a user has made in a single view, with each transaction's amount, merchant and tag, and a total for all transactions.

#### User Stories / Acceptance Criteria - MVP

##### Manage Merchants

_As a user_ <br />
_I want to be able to view accurate information about merchants I spend money at e.g. Tesco, Amazon, Scotrail_ <br />
_So that I can keep track of where I have spent money_ <br />

**Acceptance Criteria:** Users should be able to add new merchants to the list of merchants <br />:white_check_mark:
**Acceptance Criteria:** Users should be able to edit details of existing merchants in their list of merchants <br /> :white_check_mark:
**Acceptance Criteria:** Users should be able to delete merchants from their list of merchants <br />:white_check_mark:

##### Manage Tags

_As a user_ <br />
_I want to be able to view accurate information about what I spend my money on e.g. groceries, entertainment, transport_ <br />
_So that I can keep track of how I spend my money_ <br />

**Acceptance Criteria:** Users should be able to add new tags to the list of tags <br />:white_check_mark:
**Acceptance Criteria:** Users should be able to edit details of existing tags in their list of tags <br />:white_check_mark:
**Acceptance Criteria:** Users should be able to delete tags from their list of tags <br />:white_check_mark:

##### Manage Transactions

_As a user_ <br />
_I want to be able to view accurate information about my transactions, keeping a running total_  <br />
_So that I can keep track of my spending_ <br />

**Acceptance Criteria:** Users should be able to create transactions <br />:white_check_mark:
**Acceptance Criteria:** Users should be able to assign a tag  to a transaction <br />:white_check_mark:
**Acceptance Criteria:** Users should be able to assign a merchants to a transaction <br />:white_check_mark:
**Acceptance Criteria:** Users should be able to assign  an amount spent to each transaction <br />:white_check_mark:
**Acceptance Criteria:** Users should be able to edit transactions <br />:white_check_mark:
**Acceptance Criteria:** Users should be able to delete transactions <br />:white_check_mark:

##### View Transactions

_As a user_ <br />
_I want to be able to view all my transactions at once, along with a running total_ <br />
_So that I can see the total amount of money I have currently spent_<br />

**Acceptance Criteria:** Users should be able to see a view of all transactions, including tag, merchant, and amount for each transaction, along with a running total of the amount spent <br />:white_check_mark:

#### Possible Extensions (Create your own user stories for these)

* Transactions should have a timestamp, and the user should be able to view transactions sorted by the time they took place.
* The user should be able to supply a budget, and the app should alert the user somehow when when they are nearing this budget or have gone over it.
* The user should be able to filter their view of transactions, for example, to view all transactions in a given month, or view all spending on groceries.

#### Phase 1 reflection

* Still bland but this will be dressed up later. keep it solid.

* Can see all transactions, all merchants and all IDs but not intuitively linking them from the users perspective. Clicking on a merchant should show you spending etc etc.

* Duplication of higher level navigation - this is for accessibility but should change  in CSS phase 3

* Edit delete could be replaced by decorative buttons i.e. common symbols?

* No way to filter or sort data - would this be done at SQL level or Ruby end? Hmmm...

* There's no need for users to see IDs in the view. Get rid of that nonsense.:white_check_mark:




#### Acceptance Criteria Cycle 2

*As a user I want to see if I'm making progress from month to month so that I know if it's worth me using the app*

**Acceptance Criteria**
Users should be able to transaction dates and order transactions by date in order to track their spending over time.

**Acceptance Criteria**
Users should see a total amount for transactions over a certain period of time.

*As a user i want to set budgets so that I can plan for the future and save money*

**Acceptance Criteria**
Users should be able to assign budgets to tags and if budget is neared or exceeded then a warning will display.

*As a user I want to be amused/entertained when I log on so that the sheer boredom of dealing with finances doesn't make me want to wretch*

**Acceptance Criteria**  Users should be greeted with a random quote on page load

*As a user I want to upload more than one transaction at at time so that if I forget to log expenses it's not such a chore*

**Acceptance Criteria** Users should have csv import functionality

*As a user I may want to show off my budgeting prowess to apply for a mortgage*

**Acceptance Criteria** Users should have csv export Functionality

*As a user I may want to see how much I'm sepnding at specific merchants so that i know which conglomerate is getting my coin*

**Acceptance criteria** Users should be able to see how much they've spent at each merchants

*As a user I may want to see how much I'm spending in specific areas so that i can see where my habits lie*

**Acceptance criteria** Users should be able to see how much they've spent under each tag.
