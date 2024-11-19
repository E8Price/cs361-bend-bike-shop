class Rental
  WEIGHT_COST_MULTIPLIER = 2

  attr_reader :bike

  def initialize(bike)
    @bike = bike
  end

  def price
    base_price = bike.base_price
    bike_weight_cost = bike.weight * WEIGHT_COST_MULTIPLIER
    luggage_weight_cost = bike.luggage.weight * WEIGHT_COST_MULTIPLIER

    base_price + bike_weight_cost + luggage_weight_cost
  end

  def weight
    bike.weight + bike.luggage.weight
  end
end
