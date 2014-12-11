gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/shopping_list'

class IntegrationTest < Minitest::Test
  def test_it_can_calculate_price
    shopping_list = ShoppingList.new
    items = shopping_list.price('candy')
    #items are all the item instances

    assert_equal 186.85, items
  end
end