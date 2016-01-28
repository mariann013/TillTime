require 'Products.rb'

describe Products do

    it 'should initialize with the sample products' do
      expect(subject.inventory).to eq({ 001 => 9.25, 002 => 45, 003 => 19.95 })
    end

  context 'adding items' do

    it 'should display added items in inventory' do
      subject.addItem(004, 14)
      expect(subject.inventory).to include(004 => 14)
    end

    it 'should not allow a product to be entered that already exists in the inventory' do
      expect { subject.addItem(001, 9.25) }.to raise_error "Item code is already included in inventory"
    end

  end

    it 'should delete items from the inventory' do
      subject.deleteItem(003)
      expect(subject.inventory).not_to include(003 => 19.95)

    end
end
