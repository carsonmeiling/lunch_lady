class MainDish
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
    puts @main_list
  end
end

class SideDish
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
    puts @side_list
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
  end

end

carson = LunchLady.new("carson")

carson.show_main_menu