class Luggage
  DEFAULT_MAX_CAPACITY = 10
  ITEM_WEIGHT = 10 

  attr_reader :items

  def initialize(initial_capacity, items, bike)
    @capacity = initial_capacity
    @items = items
    @bike = bike
  end

  def add(item)
    @items << item
  end

  def weight
    @items.size * ITEM_WEIGHT
  end
end
