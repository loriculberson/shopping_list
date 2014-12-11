gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/mock'
require_relative '../lib/shopping_list'


class ShoppingListTest < Minitest::Test 
  def test_it_can_find_the_price
    item_repository = Minitest::Mock.new
    shopping_list = ShoppingList.new(item_repository)
    item_repository.expect(:find_price_of_an_item, [], ['candy'])
    shopping_list.price('candy')
    item_repository.verify
  end


end