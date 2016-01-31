require 'PromotionRule.rb'

describe PromotionRule do
  it 'should return a 10% discount on orders over £60' do
    expect(subject.ruleTwo(70)).to eq 63
  end

  it 'should return a discount on 2 or more lavender hearts' do
    expect(subject.ruleOne(18.5, [001, 001])).to eq 17
  end

end
