require_relative 'Product'
require_relative 'PromotionRule'

class Checkout

  attr_reader :basket, :value

  def initialize
    @basket   = []
    @value    = 0
    @products = Product.new
    @rules    = PromotionRule.new
  end

  def scan(item)
    @basket << item
    @value  += @products.inventory[item]
  end

  def total
    @value = @rules.ruleOne(value)
    @rules.ruleTwo(value, basket)
  end

end
