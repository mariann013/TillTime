require 'Checkout.rb'

describe Checkout do

  context 'initialized variables' do
    it 'should initialize with an empty cart' do
      expect(subject.basket).to be_empty
    end

    it 'should initialize with a total of 0' do
      expect(subject.value).to eq 0
    end
  end

  context 'scanning items' do
    it 'should update the array with the scanned item' do
      subject.scan(001)
      expect(subject.basket).to eq [001]
    end

    it 'should update the total with scanned item' do
      subject.scan(001)
      expect(subject.value).to eq 9.25
    end
  end

  context 'correct totals' do
    it 'should apply first discount rule' do
    subject.scan(002)
    subject.scan(002)
    expect(subject.total).to eq 81
    end

    it 'should apply second discount rule' do
      subject.scan(001)
      subject.scan(001)
      expect(subject.total).to eq 17
    end
  end

  context 'test data' do
    it 'test case 1' do
      subject.scan(001)
      subject.scan(002)
      subject.scan(003)
      expect(subject.total).to eq 66.78
    end

    it 'test case 2' do
      subject.scan(001)
      subject.scan(003)
      subject.scan(001)
      expect(subject.total).to eq 36.95
    end

    it 'test case 3' do
      subject.scan(001)
      subject.scan(002)
      subject.scan(001)
      subject.scan(003)
      expect(subject.total).to eq 73.76
    end
  end
end
