class RestaurantsRepresenter
  def initialize(restaurants)
    @restaurants = restaurants
  end

  def as_json
    @restaurants.map do |restaurant|
      {
        id: restaurant.id,
        name: restaurant.name,
        customer_rating: restaurant.customer_rating,
        distance: restaurant.distance,
        price: restaurant.price,
        cuisine: restaurant.cuisine.name
      }
    end
  end
end
