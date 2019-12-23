module Purchasable
  def purchase(item)
    "#{item} has ben purchased"
  end
end

class Car
  include Purchasable
end

mazda = Car.new
p mazda.purchase("Mazda cx-9")
