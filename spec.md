# Specifications for the Rails Assessment
Specs:

 Using Ruby on Rails for the project
 Include at least one has_many relationship (x has_many y; e.g. User has_many Recipes)
 Include at least one belongs_to relationship (x belongs_to y; e.g. Post belongs_to User)
 Include at least two has_many through relationships (x has_many y through z; e.g. Recipe has_many Items through Ingredients)
 Include at least one many-to-many relationship (x has_many y through z, y has_many x through z; e.g. Recipe has_many Items through Ingredients, Item has_many Recipes through Ingredients)
 The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (attribute_name e.g. ingredients.quantity)
 Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item)
 Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes)
 Include signup
 Include login
 Include logout
 Include third party signup/login (how e.g. Devise/OmniAuth)
 Include nested resource show or index (URL e.g. users/2/recipes)
 Include nested resource "new" form (URL e.g. recipes/1/ingredients/new)
 Include form display of validation errors (form URL e.g. /recipes/new)
Confirm:

 The application is pretty DRY
 Limited logic in controllers
 Views use helper methods if appropriate
 Views use partials if appropriate




 #notes

 join table direct relationship example
 <%= form_for @appointment do |f| %>
  <%= f.datetime_select :appointment_datetime %>
  <%= f.collection_select :doctor, Doctor.all, :id, :name %>
  <%= f.collection_select :patient, Patient.all, :id, :name %>
  <%= f.submit %>
<% end %>


<%= f.collection_check_boxes :category_ids, Category.all, :id, :name %>

  def post_params
    params.require(:post).permit(:title, :content, category_ids:[])
  end

  def new
    @notice = Notice.new
    @notice.entity_roles.build(name: 'submitter').build_entity
    @notice.entity_roles.build(name: 'recipient').build_entity
  end




<%= simple_form_for(@user) do |form| %>
  <%= form.input :title %>

  <%= form.simple_fields_for(:entity_roles) do |roles_form| %>
    <% role = roles_form.object.name.titleize %>
    <%= roles_form.input :name, as: :hidden %>
    <%= roles_form.simple_fields_for(:entity) do |entity_form| %>
      <%= entity_form.input :name, label: "#{role} Name" %>
      <%= entity_form.input :address, label: "#{role} Address" %>
    <% end %>
  <% end %>

  <%= form.submit "Submit" %>
<% end %>