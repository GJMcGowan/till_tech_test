
class Till
  attr_reader :list
  attr_reader :allowed

  def initialize
    @list = {}
    @allowed =       {
        "Cafe Latte" => 4.75,
        "Flat White" => 4.75,
        "Cappucino" => 3.85,
        "Single Espresso" => 2.05,
        "Double Espresso" => 3.75,
        "Americano" => 3.75,
        "Cortado"=> 4.55,
        "Tea"=> 3.65,
        "Choc Mudcake"=> 6.40,
        "Choc Mousse"=> 8.20,
        "Affogato"=> 14.80,
        "Tiramisu"=> 11.40,
        "Blueberry Muffin"=> 4.05,
        "Chocolate Chip Muffin"=> 4.05,
        "Muffin Of The Day"=> 4.55
      }
  end

  def add(item, quantity)
    raise "That is not on the menu" unless @allowed.has_key?(item)
    @list[item.to_sym] = quantity
  end
end