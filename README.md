# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
Changes I made!!!
*I added belongs to cart in products model   #belongs_to :cart
*I added validations (see R7-additional models like product lines 4-9)
* these one-to-many associations to the schema are fube
**   belongs_to :cart
**   belongs_to :product
*on model cart.rb, on line 5, I need to check the product model because there is no association (this is confusing)
*Implemented destroy cart item and destroy action (see R7 additional)
*updated the action destroy for cart-item controller (may or may not expect carts)
*views for cart_item has edit and show now
*made sure that cart needs edit and form... 
**** destroy buttons are working just fine****
*need to make buttons in views for the delete functions in controller
**link to to pass it a method of delete (download rails javascript unintrusive package)
*** use turbo method delete 
<%= link_to "Delete post", post_path(post), data: { turbo_method: "delete", turbo_confirm: "Are you sure?" } %>
**for a button, cannot use it in a form... can create a button which creates a form in itself 

Changes made on Oct 29th:
Added following to product factory:

require 'faker'
FactoryBot.define do
  factory :customer do |f|
    f.first_name { Faker::Name.first_name }
    f.last_name { Faker::Name.last_name }
    f.phone { Faker::Number.number(digits: 10) }
    f.email { Faker::Internet.email }
  end
end 

then add the two files for models and requests

**********************************************************************
Need to fix the following items:

*I need to fix this: format.html { redirect_to carts_url }
*Make sure that this goes to the correct cart path<%=  link_to "Back to cart", cart_path(@cart), class: "btn btn-primary" %>
*fix this route: http://localhost:3000/carts/cart_items/new to create new cart items (its calling cart items and I dont have that. It needs to show something like cart/1/cart_items/new) and its showing all the carts... i want to call a singular cart

*everytime I create a new cart item, it does not go back to the shopping cart, I need to fix that.

*add a dropdown menu in cart section
*make sure links are working (by using server as a guidance)
*add (copy and paste RSpec)

Future changes to be made:
*add pagination in the future
*take a look at customers and orders on R7 additional for inspiration
*I need to a form for carts views in the future 


<div...>
    <%= form.label :image, style: "display: block" %>
    <%= form.text_field :image %>
  </div...>

  ---> image field for upload active storage 
  --> create a new branch for this

  <div...>
    <%= form.label :amount, style: "display: block" %>
    <%= form.text_field :amount %>
  </div..>

  --> change to number field 
  --> create a new branch for this one 

  change into a small form with checkboxes and use submit button (use gem for searches, its called **ransack... or direct active queries) Products can be searched...
  query active records using params 
