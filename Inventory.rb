class Inventory
  attr_accessor :flowers, :store

  def initialize(store)
    @store = store
    @flowers = []
  end

  def add_flower(flower)
    @flowers << flower
  end

  # def inventory_held(flower_name)
  #   Inventory.flowers.each do |flower|
  #     if flower_name == flower.name
  #       puts flower.inventory
  #     end
  #   end
  # end
end
