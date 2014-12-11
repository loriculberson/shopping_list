gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/item'
#each individual item, NOT all the items


class ItemTest < Minitest::Test 
  def test_item_has_attributes
    data = {
      name: "applesauce",
      quantity: "14 bag",
      unit_price: "6.85"
    }
    item = Item.new(data)

    assert_equal "applesauce", item.name
    assert_equal 14, item.quantity
    assert_equal 6.85, item.unit_price
  end
end