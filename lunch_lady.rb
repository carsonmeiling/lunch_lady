
#global arrays 
$main_list = []
$side_list = []
$user_orders = []
module List
  #loops through arr and puts contents
  def menu_ready(arr)
    p arr
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
    #makes array of hashes main dish
    new_item = {}
    new_item["item".to_sym] = @item
    new_item["price".to_sym] = @price
    $main_list << new_item
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
    #makes array of hashes for side dish
    new_item = {}
    new_item["item".to_sym] = @item
    new_item["price".to_sym] = @price
    $side_list << new_item
    menu_ready($side_list)
  end
end


class LunchLady
  include List
  def initialize
    # @name = name
    @main_dish = []
    @side_dish = []
    greeting
  end
  
  def greeting
    #starting function to gets first order choice
    puts `clear`
    puts 
    puts 'Hello, what would you like to order today?'
    puts 
    show_main_menu
    user_choice = gets.strip.to_i
    $user_orders << $main_list[user_choice]
    puts $user_orders
  end
  
  
  
  def show_main_menu
    #calls main dish class
    noodles = MainDish.new('noodles', 3.50)
    noodles.make_list
    pizza = MainDish.new('pizza', 4.50)
    pizza.make_list
    tacos = MainDish.new('tacos', 5.99)
    tacos.make_list
    menu_ready($main_list)
  end

  def make_side_dish_menu
    #calls side dish class
    warm_water = SideDish.new('warm water', 2.79)
    warm_water.make_list
    wings = SideDish.new('wings', 7.99)
    wings.make_list
    toast = SideDish.new('toast', 1.99)
    toast.make_list
  end
end

# carson = LunchLady.new("carson")
LunchLady.new

# carson.make_side_dish_menu

