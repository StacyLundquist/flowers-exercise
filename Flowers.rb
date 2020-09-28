require_relative 'Inventory'
require 'terminal-table'

class Flower
  attr_accessor :name, :size, :color, :quantity, :bundles, :max, :sold

  def initialize(name, size, color, quantity_available, bundle_size, max_stock, total_sold)
    @name = name
    @size = size

    valid_sizes = %w[small medium large]
    unless valid_sizes.include?(size)
      raise ArgumentError, "Not a valid size."
    end

    @color = color
    @quantity = quantity_available
    @bundles = bundle_size
    @max = max_stock
    @sold = total_sold
  end

  def inventory
    return "There are #{@quantity} #{@size} #{@color} #{@name}s available. #{@sold} have been sold to date. Each bundle has #{@bundles}, with a maximum of #{@max} possible."
    if nil?
      return ArgumentError, "You do not have that flower in stock."
    end
  end


  def self.inventory
    flowers = []
    list = 1
    Inventory.flowers.each do |flower|
      flowers << %W[#{list}. #{flower.name.capitalize} #{flower.size} #{flower.color.capitalize} #{flower.quantity} #{flower.bundles} #{flower.max} #{flower.sold}]
      list += 1
    end

    inventory = Terminal::Table.new :title => "Complete Stock Inventory.",
                                    :headings => ['Item Number', 'Name', 'Size', 'Color', 'Quantity', 'Bundle Size', 'Maximum allowed', 'Sold-to-Date'],
                                    :rows => flowers

    puts inventory
  end

  def sell(integer)
    raise ArgumentError, "Must be a number" if integer.class != Integer

    @quantity -= integer
    @sold += integer
    case
    when @quantity < @max / 4
      self.restock
    end
  end

  def restock
    @quantity += (((@max - @quantity) / @bundles).floor * @bundles)
  end

end

