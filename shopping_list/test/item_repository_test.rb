gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/item_repository'

class ItemRepositoryTest < Minitest::Test

  def test_it_can_find_name
    items = [
      {name: "muffins", quanity: 3, unit_price: 3.02},
      {name: "muffins", quanity: 4, unit_price: 3.02},
      {name: "grapes",  quanity: 7, unit_price: 1.38},
      {name: "popcorn", quanity: 13, unit_price: 8.59}
    ]
  
    repository = ItemRepository.new(items)

    items = repository.find_item_by_name("muffins")
    assert_equal 2,  items.count
    assert_equal "muffins", repository.find_item_by_name("muffins").first.name

    end

    def test_it_can_find_quanity
      items = [
        {name: "muffins", quantity: 3, unit_price: 3.02},
        {name: "muffins", quantity: 4, unit_price: 3.02},
        {name: "grapes",  quantity: 7, unit_price: 1.38},
        {name: "popcorn", quantity: 13, unit_price: 8.59}
      ]
  
      repository = ItemRepository.new(items)
    
      assert_equal 7, repository.find_item_by_quantity("muffins")

    end

   def test_it_can_find_price_of_an_item
      items = [
        {name: "muffins", quantity: 3, unit_price: 3.02},
        {name: "muffins", quantity: 4, unit_price: 3.50},
        {name: "grapes",  quantity: 7, unit_price: 1.38},
        {name: "popcorn", quantity: 13, unit_price: 8.59}
      ]
  
      repository = ItemRepository.new(items)
    
      assert_equal 23.06, repository.find_price_of_an_item("muffins")

    end

end