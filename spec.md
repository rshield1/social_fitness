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
What methods do we get from “belongs_to”, “has_many”, “has_many, through” and “has_secure_password”?
How do we represent relationships between models in our tables?
What are params? What are the two places they come from? 
What are sessions?
What is the flow of your application? (i.e. what triggers your get routes vs post routes or patch routes or delete routes)
How do you authenticate your users when they log in?
How do you validate that a username is unique?
Why do I need to check that a resource belongs to the current user in the patch and delete routes?
What are URL helpers? Where do they come from?
When do we typically use form_for vs. form_tag?
How does omniauth work?
When a user makes a request (via form, link, manual change in the url), how does rails know how to handle that request?
How do you validate data? When are these validations run?
Why do we use a join table? What relationship are we setting up?
How do we set up nested forms - what do these forms need to include so that we can associate the new object with the existing? (i.e. if we have the nested route: posts/1/comments/new, how do we associate the new comment with post with id of 1?)
Are nested routes and nested forms connected in any way? How do we use a nested route to help set up our nested form?

