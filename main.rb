require_relative 'Flowers'
require_relative 'Inventory'
require 'terminal-table'

Inventory = Inventory.new("Ice's flowers")

def main

  # NAME	SIZE	COLOR	QUANTITY AVAILABLE	BUNDLES	MAX STOCK	TOTAL SOLD

  # Tulip	medium	purple	52	30	100	2558
  # Daisy	medium	White	15	50	300	14839

  Inventory.add_flower(rose = Flower.new("rose", "medium", "red", 144, 24, 350, 15042))
  Inventory.add_flower(lily = Flower.new("lily", "medium", "white", 91, 20, 120, 9241))
  Inventory.add_flower(tulip = Flower.new('tulip', 'medium', 'yellow', 179, 30, 250, 8350))

  # control_loop = []
  # control_loop << [1, "List inventory"]
  # control_loop << [2, "Flower details"]
  # control_loop << [3, "Add flower"]
  # control_loop << [4, "Exit"]
  #
  # input = nil
  # until input == "exit" || input == "4"
  #   control = Terminal::Table.new :title => "What's next?", :rows => control_loop
  #   puts control
  #   input = gets.chomp
  #
  #   case input.downcase
  #   when "1", "list inventory"
  #     puts Flower.inventory
  #
  #   when "2", "flower details"
  #     puts "Which flower?"
  #     flower_name = gets.chomp.downcase
  #     Inventory.flowers.each do |flower|
  #       if flower_name == flower.name
  #         puts flower.inventory
  #       end
  #     end
  #
  #   when "3", "add flower"
  #     puts "What's the name?"
  #     name = gets.chomp.downcase
  #     puts "Whats the size?"
  #     size = gets.chomp.downcase
  #     puts "What color?"
  #     color = gets.chomp
  #     puts "How many?"
  #     available = gets.chomp.to_i
  #     puts "What's the bundle size?"
  #     bundle = gets.chomp.to_i
  #     puts "What's the maximum stock allowed?"
  #     max = gets.chomp.to_i
  #     puts "How many have been sold to date?"
  #     sold = gets.chomp.to_i
  #
  #     Inventory.add_flower(name = Flower.new(name, size, color, available, bundle, max, sold))
  #   end
  # end
  puts rose.name
  p rose.inventory
  p rose.quantity
  p rose.sold
  p '*******~~~~~~~~******'
  rose.sell(55)

  p rose.inventory

  rose.sell(10)
  p rose.inventory


end

main


