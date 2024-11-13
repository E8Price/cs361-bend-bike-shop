# Bike

class Bike
  STANDARD_WEIGHT = 200 # lbs
  MAX_CARGO_ITEMS = 10

  attr_reader :id, :color, :price, :weight, :rented, :cargo_contents

  def initialize(id, color, price, weight = STANDARD_WEIGHT, rented = false)
    @id = id
    @color = color
    @price = price
    @weight = weight
    @rented = rented
    @cargo_contents = []
  end


  def rent!
    @rented = true
  end

  def return!
    @rented = false
  end

  def add_cargo(item)
    if cargo_full?
      puts "Cannot add #{item}: pannier is full."
    else
      @cargo_contents << item
    end
  end

  def remove_cargo(item)
    @cargo_contents.delete(item)
  end

  def pannier_capacity
    MAX_CARGO_ITEMS
  end

  def pannier_remaining_capacity
    pannier_capacity - @cargo_contents.size
  end

  
  private

  def cargo_full?
    @cargo_contents.size >= pannier_capacity
  end
end
