# Simple Product Customizer

This is a simple mobile-only web app for a Frontend RoR challenge. The requirements are as below:

Make a web app(mobile friendly, ignore desktop) that has:
1. A Product page that includes:
  * Product.name -> Awesome Tshirt
  * Product.colors -> [red, blue, orange, black]
  * Product.price -> a number in euros
  * Product.stock -> 0-100
  * Product.sizes -> [xs, s, ..]
  * Product.id => 1,2,3
  * A link to the customization page.

2. A Customization page with a form to send the below information to a database:
  * CUSTOM_PRODUCT.right_sleeve
  * CUSTOM_PRODUCT.left_sleeve
  * CUSTOM_PRODUCT.front
  * CUSTOM_PRODUCT.back
  * CUSTOM_PRODUCT.quantity
  * CUSTOM_PRODUCT.size
  * CUSTOM_PRODUCT.color
  * CUSTOM_PRODUCT.product_id

  ## A demo of the app can be found here: https://stormy-hollows-00140.herokuapp.com/

This was built with Ruby on Rails and also using StimulusJS in order to insert JS for the Customization Page features. A postgresql db was used and a Product was seeded into the db for this use but a full scaffold was generated for both Product and CustomProduct to allow further improvements to be made such as adding/editing multiple Products and CustomProducts.

FabricJS was used to apply an editable canvas element in the Customization Page. This was applied in the `right_sleeve` attribute for text and in the `front` attribute for user uploaded images to demonstrate.

Some future improvements to make with more time:
* Edit functionality for CustomProducts
* Enable all customizable areas to receive text and images
* Save position of canvas elements added
* Make the product mock up to be dynamic to allow users to see edits on the back
* Would look to implement more Rails Hotwire or even React to create a more dynamic editor
* Add more tailored tests

## Setup instructions to run locally

* Installing gems and dependencies
```bundle && yarn```

* Database creation
```rails db:create db:migrate db:seed```

* Run server
```rails s```