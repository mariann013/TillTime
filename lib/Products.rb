class Products

attr_accessor :inventory

  def initialize
    @inventory = { 001 => 9.25,
                   002 => 45,
                   003 => 19.95 }
  end

  def addItem(productcode, price)
    @inventory.merge!(productcode => price)
  end

  def deleteItem(productcode)
    @inventory.delete(productcode)
  end

end
