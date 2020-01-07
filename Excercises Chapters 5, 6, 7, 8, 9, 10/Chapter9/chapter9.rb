#Operator expressions, basic arithmetics and redefining of instance methods
a, b, c = 2, 4, 6
puts a + b * c
puts
# class Fixnum
#   def *(other)
#     return self + other
#   end
# end
#it creates warning so i will leave it commented out
puts 1*2
a = 1
puts a*3

puts
class Bonuses

  attr_accessor :total_bonus

  def initialize
    @total_bonus = 0
  end

  def <<(money)
    @total_bonus += money
    self
  end

end
last_year = Bonuses.new
last_year  << 1000 << 8000 << 7000 << 9000
p "Last year my total bonus was #{last_year.total_bonus} GEL"

puts

class SquareBrackets
  def [](p1, p2)
    p1 * p2
  end
end

new_obj = SquareBrackets.new
puts new_obj[4, 10]

puts
class SquareBrackets2
  def []=(*params)
    params.inspect
  end
end

new_object = SquareBrackets2.new
p new_object = [1, 2, 3]

puts"_________________________________________________________________________"
