class Products

attr_accessor :inventory

  def initialize
    @inventory = { 001 => 9.25,
                   002 => 45,
                   003 => 19.95 }
  end

  def addItem(productcode, price)
    raise 'Item code is already included in inventory' if @inventory.include?(productcode)
    @inventory.merge!(productcode => price)
  end

  def deleteItem(productcode)
    raise 'Item code is not included in inventory' if !@inventory.include?(productcode)
    @inventory.delete(productcode)
  end

end
