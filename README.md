# Till Challenge

In completing this challenge I chose to design a flexible system for calculating prices of items and applying promotional codes.
Firstly, I decided to create a product class, not only to keep the inventory encapsulated but also to allow for a simple way to add/delete products from the inventory.
I then created a promotional rules class so each new promotional rule would simply become a new method that could then be called in the checkout class without disclosing the conditions of each promotion.

Here is an example of an interaction with the application:

```ruby
co = Checkout.new
co.scan(001)
co.scan(001)
co.scan(003)
co.total
=> 36.95
```
To install, first clone the repo and then run gem install rspec.
Run rspec to see tests and interact with the application through irb or pry.
