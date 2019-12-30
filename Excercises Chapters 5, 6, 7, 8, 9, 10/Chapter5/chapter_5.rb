#1
class Car
  def drive
    puts "Wroom-wroom"
  end
end

c = Car.new
c.drive

class Mazda < Car
end
m = Mazda.new
m.drive
puts "__________________________________________________________________________"
#2
class Car
  def initialize(mark)
    @mark = mark
  end
end
c = Car.new("Mazda")
puts c

class Car
  def initialize(mark)
    @mark = mark
  end
  def to_s
    "Car mark is #{@mark}"
  end
end

c = Car.new("Mazda")
puts c
puts "__________________________________________________________________________"
#3
class Car
  def initialize(mark)
    @mark = mark
    "The car mark is #{@mark}"
  end
end

class Mazda < Car
  def initialize
    super("Mazda")
  end
end

m = Mazda.new
puts m
puts "__________________________________________________________________________"
