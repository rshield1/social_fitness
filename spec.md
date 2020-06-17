# Specifications for the Rails Assessment
Specs:

 x Using Ruby on Rails for the project
 x Include at least one has_many relationship (x has_many y; e.g. User has_many Recipes)
 x Include at least one belongs_to relationship (x belongs_to y; e.g. Post belongs_to User)
 x Include at least two has_many through relationships (x has_many y through z; e.g. Recipe has_many Items through Ingredients)
 x Include at least one many-to-many relationship (x has_many y through z, y has_many x through z; e.g. Recipe has_many Items through x x Ingredients, Item has_many Recipes through Ingredients)
 x The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (attribute_name e.g. ingredients.quantity)

 x Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item)
 x Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes)

 x Include signup
 x Include login
 x Include logout
 x Include third party signup/login (how e.g. Devise/OmniAuth)
 x Include nested resource show or index (URL e.g. users/2/workouts)
 x Include nested resource "new" form (URL e.g. workout/1/comments/new)
 x Include form display of validation errors (form URL e.g. /recipes/new)
Confirm:

 x The application is pretty DRY
 x Limited logic in controllers
 x Views use helper methods if appropriate
 x Views use partials if appropriate


 What should I be prepared to answer?


Explain the MVC framework

How do we access data in our views that we defined in our controllers?

What is the difference between “redirect_to” and “render”
    Render tells Rails which view or asset to show a user, without losing access to any variables defined in the controller action. Redirect is different. The redirect_to method tells your browser to send a request to another URL.

What methods do we get from “belongs_to”, “has_many”, “has_many, through” and “has_secure_password”?
belongs to gives you the method= of the parent such as Workout.category=, build_category/create_category, 
has many is a one to many relationship give you destroy/clear/size/find/create

How do we represent relationships between models in our tables?
t.belongs_to/t.association_id/t.reference

What are params? What are the two places they come from?
ActionController::Base GET OR POST REQUEST URL OR FORMS

What are sessions?
sessions follow the page similar to cookies so we can set the userid to keep them logged in

What is the flow of your application? (i.e. what triggers your get routes vs post routes or patch routes or delete routes)
action/methods

How do you authenticate your users when they log in?
I use the authenticate method so I can check the truthyness of their password digest used by the bcrypt gem

How do you validate that a username is unique?
This is done in the model using validations uniqueness true

Why do I need to check that a resource belongs to the current user in the patch and delete routes?
becasue you want to delete only if the user associated with the resource. You dont want any user to delete anybodys information.

What are URL helpers? Where do they come from?
Url helpers come from actionview in rails it creates easy way to associate a Path with a particular url

When do we typically use form_for vs. form_tag?
you use form for usually when you have a model associated with the form

How does omniauth work?

When a user makes a request (via form, link, manual change in the url), how does rails know how to handle that request?
It handles it through the associated routes if set up correctly

How do you validate data? When are these validations run?
I validate data through the models validations and throught the params

Why do we use a join table? What relationship are we setting up?
we use it to set up a has many through relationship that has multiple belong to. it sets up a many to many relationship. You can use the table to query one model.

How do we set up nested forms - what do these forms need to include so that we can associate the new object with the existing? (i.e. if we have the nested route: posts/1/comments/new, how do we associate the new comment with post with id of 1?)

Are nested routes and nested forms connected in any way? How do we use a nested route to help set up our nested form?

