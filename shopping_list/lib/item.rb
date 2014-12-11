class Item
  attr_reader :name, :quantity, :unit_price
  def initialize(data)
    @name = data[:name]
    @quantity = data[:quantity].to_i
    @unit_price = data[:unit_price].to_f
  end
end