require_relative 'Products'

class Checkout

  attr_reader :basket, :total

  def initialize
    @basket = []
    @total  = 0
    @products = Products.new
  end

  def scan(item)
    @basket << item
    @total  += @products.inventory[item]
  end

end
