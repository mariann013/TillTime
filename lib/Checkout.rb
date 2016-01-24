class Checkout

  attr_reader :basket, :total

  def initialize
    @basket = []
    @total = 0
    @products = { 001 => 9.25,
                  002 => 45,
                  003 => 19.95}
  end

  def scan(item)
    @basket << item
    @total += @products[item]
  end

end
