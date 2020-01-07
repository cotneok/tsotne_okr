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
#Assignment
a = b = c = 2 + 4 + 6
puts a, b, c
a = 3 + (b = 3 + 1)
puts a, b

puts
class ProductList
  def initialize
    @products = []
  end

  def products=(list)
    @products = list.map(&:capitalize)
  end

  def [](whatever)
    @products[whatever]
  end
end

grocery_products = ProductList.new
grocery_products.products = %w{ milk butter honey bread }
p grocery_products[1]

puts

class Example
  def num=(num)
    @num =num
    return 20
  end
end

num1 = Example.new
res = (num1.num = 10)
p res
puts"_________________________________________________________________________"
#Parallel Assignment
a = 10
b = 20
puts a, b
puts
a, b = b, a

puts a, b
puts

a, b, c, *d = 1, 2, 3, 4, 5, 6, 7, 8, 9
p a, b, c, d
puts"_________________________________________________________________________"
#Conditional execution
def truthyness
  if nil
    puts "nil is truth"
  elsif false
    puts "false is truth"
  else
    puts "everything except nil and false are thruth"
  end
end
truthyness

puts
puts false || true
puts false || false
puts false && true
puts true && true || false
puts "dog" && 57
puts 57 && "dog"
puts false && nil
p nil && false
puts false || 90
puts 90 || false
puts 90 || "dog"
puts "dog" || 90

puts
var = nil
var ||= 2
puts var

var = 1
var ||= 2
puts var

puts defined? [1, 2, 3].map
puts"_________________________________________________________________________"
#Comparing objects
puts "value" == "value"
puts "Value" == "value"

puts

p "text".class.ancestors
# => [String, Comparable, Object, Kernel, BasicObject]
puts String === "text"
puts Object === "text"
puts Comparable === "text"
puts  Numeric === "text"

puts

puts 40 <=> 50
puts 40 <=> 40
puts 40 <=> 30
puts -40 <=> -50

puts

puts 7 == 7.0
puts 7.eql?(7.0)
puts"_________________________________________________________________________"
#Ternary operator
grade = 95
pass = grade > 90 ? true : false
puts pass
puts"_________________________________________________________________________"
#Case statements
grade = 65
case grade
when 0..59
  puts "You fucking fialed"
when 60..69
  puts "You got D loser"
when 70..79
  puts "You got C"
when 80..90
  puts "Not bad, you have B"
when 91..100
  puts "You are genius and got A"
else
  puts "IDK who u are"
end
puts"_________________________________________________________________________"
#Next, break and redo
(1..5).each do |i|
  next if i == 3
  puts "Iteration #{i}"
end

puts

(1..5).each do |i|
  break if i == 3
  puts "Iteration #{i}"
end

puts

(1..5).each do |i|
  puts "Iteration #{i}"
  i += 1
  redo if i == 3
end
puts"_________________________________________________________________________"
