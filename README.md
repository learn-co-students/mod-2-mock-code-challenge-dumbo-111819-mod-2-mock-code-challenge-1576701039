## The Domain
Congratulations! You have been hired by Access Camp and for your first job, you have been tasked with building out a website to log campers with their activities.

A `camper` can participate in many `activities` and an `activity` can have many `campers` participating in it.

Visiting `/campers` will show the index page of all the campers and visiting `/activities` will go to the index page for all the `activities`.
Currently, we don't have any way to associate the two, so consider the relationship and think about how a `camper` can `signup` for an `activity`!

## The Deliverables

1. To log a camper with an activity, we need to store some additional information in our database. Make the necessary updates to our database, so that **a `camper` can have many `activities`** and **an `activity` can have many campers**. The `signup` should also include a time (as an integer) that is between 0 and 23, referring to the hour of the activity.

2. As a user, I should be able to go to the index page of the `campers` and click on the names to go to the show page for that `camper`. The show page should show the `camper's` name, their age and the list of activities that they have signed up for.

3. As a user, I should be able to go to the index page of the `activities` and click on the name of the activity to go to the show page for that `activity`. The show page should show the `activity's` name and its difficulty level.

4. As a user, I should be able to fill out a form to create a new `signup` that will associate a `camper` with an `activity`. I should be able to choose an existing `activity`, choose an existing `camper` and add a time. Upon a successful creation, I should be redirected to the `camper's` show page.

5. As a user, I should be able to fill out a form to create a new `camper`, with their names and age!

### Hints / Tips

+ Remember we want to be RESTful. What URL should show info about a particular camper? What URL should show a form to create a signup? What controller actions are associated?  

Camper -< Signup >- Activity

[x] - Camper
  [x] - has_many :signups
  [x] - has_many :activities, through: signups
  [x] - index page with all campers
    [x] - link to each camper
  [x] - show page for camper
    [x] - name
    [x] - age
    [x] - list of activities
  [x] - form to create new camper
    [x] - with name and age

[x] - Signup
    [x] - has a time between 0 and 23
    [x] - camper id
    [x] - activity id
  [x] - validates time 0 to 23
  [x] - form
    [x] - associates a camper with an activity
    [x] - activity drop down
    [x] - camper drop down
    [x] - input a time
    [x] - redirect to camper show page

[x] - Activity
  [x] - index page for all activities
    [x] - link to each activity
  [x] - show page
    [x] - name and difficulty level
  [x] - has_many :signups
  [x] - has_many :campers, through: signups

[x] - Please don't make the real challenge too much harder because I did extra deliverables lol. I just wanted more practice and didn't want to walk out too early.