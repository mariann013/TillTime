class PromotionRule

  def ruleOne(value)
    value = value*0.9 if value >= 60
    value
  end

  def ruleTwo(value, basket)
    count = 0
    basket.each do |key, price|
      count += 1 if key == 001
    end
    value -= 0.75*count if count >= 2
    value
  end

end
