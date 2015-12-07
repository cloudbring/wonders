require 'test_helper'
require 'wonders_logic'

describe Item do
  before do
    @item = Item.new(name: 'First Item')
    @item2 = Item.new(name: 'Second Item')
  end

  describe 'name' do
    it 'must be able to create an item' do
      @item.name.must_equal 'First Item'
    end

    it 'must be able to create a second item' do
      @item2.name.must_equal 'Second Item'
    end
  end

  describe 'id' do
    before do
      @items = []
    end
    it 'must be unique' do
      100.times { |i| @items.push Item.new(name: "#{i} Item of 100") }
    end
  end
end
