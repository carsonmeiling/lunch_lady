module List
  def menu_ready(arr)
    arr.each_with_index do |name, index|
      puts "#{index}) #{name[:item]}: $#{name[:price]}"
    end
  end
end

class MainDish
  include List
  attr_accessor :item, :price

  def initialize(item, price)
    @item = item
    @price = price
  end
  def make_list
    @main_list = []
    new_item = {}
    new_item["item".to_sym] = @item
    new_item["price".to_sym] = @price
    @main_list << new_item
    menu_ready(@main_list)
  end
end


class SideDish
  include List
  attr_accessor :item, :price
  
  def initialize(item, price)
    @item = item
    @price = price
  end

  def make_list
    @side_list = []
    new_item = {}
    new_item["item".to_sym] = @item
    new_item["price".to_sym] = @price
    @side_list << new_item
    menu_ready(@side_list)
  end
end


class LunchLady
  def initialize(name)
    @name = name
    @main_dish = []
    @side_dish = []
  end

  def show_main_menu
    noodles = MainDish.new('noodles', 3.50)
    noodles.make_list
    pizza = MainDish.new('pizza', 4.50)
    pizza.make_list
    tacos = MainDish.new('tacos', 5.99)
    tacos.make_list
  end

  def make_side_dish_menu
    warm_water = SideDish.new('warm water', 2.79)
    warm_water.make_list
    wings = SideDish.new('wings', 7.99)
    wings.make_list
    toast = SideDish.new('toast', 1.99)
    toast.make_list
  end
end

carson = LunchLady.new("carson")

carson.show_main_menu
carson.make_side_dish_menu