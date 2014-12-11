require 'csv'
require_relative '../lib/item'

class ItemRepository
  def self.load_entries(directory)
    file = File.join(directory, 'items.csv')
    data = CSV.open(file, headers: true, header_converters: :symbol)
    rows = data.map do |row|
     Item.new(row)
    end
    new(rows)
  end

  def initialize(items)
    @items = items
  end

  def find_item_by_name(name)
    #sort thru item_names from data file and
    #formatted in item.rb
    @items.select {|item| item.name == name}
  end

  def find_item_by_quantity(name)
    named_items = find_item_by_name(name)    
    named_items.inject(0) { |sum, item| sum + item.quantity }
  end

  def find_price_of_an_item(name)
     named_items = find_item_by_name(name)    
     named_items.inject(0) { |sum, item| sum + (item.unit_price * item.quantity) }.round(2)

  end

end