require_relative 'Products'

class Checkout

  attr_reader :basket, :value

  def initialize
    @basket = []
    @value  = 0
    @products = Products.new
  end

  def scan(item)
    @basket << item
    @value  += @products.inventory[item]
  end

end
