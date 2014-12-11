require_relative 'item_repository'

class ShoppingList

  def initialize(item_repository = ItemRepository.load_entries('../data'))
    @item_repository = item_repository
  end


  def price(item)
    @item_repository.find_price_of_an_item(item)
  end
end