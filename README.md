#README
THE CANTEEN STORE
My project focuses on creating a store that shows what products are available for an individual and it implements a shopping cart that allows a user (employee) to add up some of the products for an individual.

#PROJECT DESCRIPTION
My project allows employees to sort what products an individual buys on a weekly basis to understand their habits overtime. For example, when individual A buys 5 products on a certain day of the week, this application can track how many of the items that individual A buys on a weekly and monthly basis. However, since there are at least more than 20 plus individuals that use this store, I wanted to also keep track of how many products, and the cost for those products, so I can utilize that information for when the store is run next. 

I used Ruby on Rails to create associations between the products, employees, individuals, and the shopping cart.

#CURRENT FEATURES
**These are the current changes that I made:**
-[x] I added belongs to cart in products model   #belongs_to :cart
-[x] I added validations (see R7-additional models like product lines 4-9)
-[x] These one-to-many associations to the schema are done (belongs_to :cart and belongs_to :product)
-[x] On model cart.rb, on line 5, I need to check the product model because there is no association (this is confusing)
-[x] Implemented destroy cart item and destroy action (see R7 additional)
-[x] Updated the action destroy for cart-item controller (may or may not expect carts)
-[x] Views for cart_item has edit and show now
-[] The cart needs edit and form
-[x] Need to make buttons in views for the delete functions in controller (for a button, cannot use it in a form... can create a button which creates a form in itself) 
-[x] Created a branch to add images and uploaded active storage 


**CHALLENGES**
*Need to fix the following items:*
-[] I need to fix this: format.html { redirect_to carts_url }
-[] Make sure that this goes to the correct cart path<%=  link_to "Back to cart", cart_path(@cart), class: "btn btn-primary" %>
-[] Fix this route: http://localhost:3000/carts/cart_items/new to create new cart items (it's called cart items and I don't have that. It needs to show something like cart/1/cart_items/new) and it's showing all the carts... I want to call a singular cart
-[] Every time I create a new cart item, it does not go back to the shopping cart, I need to fix that.
-[] Add a dropdown menu in cart section
-[] Make sure links are working (by using server as a guidance)
-[] Create a new branch to change the text_fields to number fields.
  <div...>
    <%= form.label :amount, style: "display: block" %>
    <%= form.text_field :amount %>
  </div..>
-[] Change into a small form with checkboxes and use submit button (use gem for searches, its called ransack... or direct active queries). Products can be searched… and query active records using params 

**FUTURE CHALLENGES**
*Future changes to be made:*
-[] Add pagination in the future
-[] Take a look at customers and orders on R7 additional for inspiration
-[] I need to a form for carts views in the future 

**Sunday, November 2nd**
-[x] set a root or home page in your routes (Nov 5th)
-[] Add more links for the user to navigate, especially to the cart item sections; it's inaccessible unless you use the url.
-[] Use SQL to get information that we want to join tables
-[] Revisit how order details equals cart items (and include price in the product table)
-[] Combine quantity and price; Use SQL functions for quantity and price for the cart items to see how much it costs to find the sum of the total cost of the whole cart
-[] Learn and understand how to use Active Record in Rails, use SQL to be accessible in Active Record and to add items to the cart (also take out the attributes from the cart)
-[] Find the cost of each item, also find the total cost for the cart, and be able to add items for the cart, and show the cart as a whole by using SQL with Active Record (it will look like the example from CTD SQL lessons but it will not be exactly like this)
-[] Use Active Record function called Select; backend SQL is super important right now to refresh ability and help to occur in Active Record 
-[] Add a User table and a login (use Devise as a gem) to be able to configure a use and do several orders in the process (for a single cart)
-[] Have an association with the user and the cart (like cart to cart_item)
-[] May want to have a user model so users log in 
-[] Deploy it on the internet cloud (like on render.com we can deploy it for free)
-[] Be wary of potential issues like SQL implementation since we cannot use sqlite3, these are flat files that cannot use postgres
-[] Another issue is that in the config/active storage in the storage.yml, it cannot be in local for the internet, it needs AWS cloud storage and it will need access key and it has to be in a rails credential file
-[] Think of project from user POV, and create a user model with an attribute… for admin to go to products page so that the admin can only be able to add to it
-[] Create a drop down page that allows products page to be more appealing  

