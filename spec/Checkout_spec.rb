require 'Checkout.rb'

describe Checkout do

  context 'initialized variables' do

    it 'should initialize with an empty cart' do
      expect(subject.basket).to be_empty
    end

    it 'should initialize with a total of 0' do
      expect(subject.total).to eq 0
    end

  end

  context 'scanning items' do

    it 'should update the array with the scanned item' do
      subject.scan(001)
      expect(subject.basket).to eq [001]
    end

    it 'should update the total with scanned item' do
      subject.scan(001)
      expect(subject.total).to eq 9.25
    end
  end

end
