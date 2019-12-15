#1
original_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
original_array.each do |i|
  puts i
end

puts "____________________________________________________"
#2
new_array = []
[1, 2, 3, 4, 5, 6, 7, 8, 9, 10].each do |i|
  i && new_array << i if i > 5
end
puts new_array
#Using map method instead of each [1, 2, 3, 4, 5, 6, 7, 8, 9, 10].map { |i| puts i if i > 5}

puts "____________________________________________________"
#3
p new_array.select {|i| i.odd?}

puts "____________________________________________________"
#4
original_array.push ("11")
original_array.unshift ("0")
p original_array

puts "____________________________________________________"
#5
original_array.pop
original_array.append ("3")
p original_array

puts "____________________________________________________"
#6
p original_array.map.uniq { |n| n.to_i }

puts "____________________________________________________"
#7
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
p arr.delete_if {|i| i.start_with?("s")}
arr1 = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
p arr.delete_if {|i| i.start_with?("s" , "w")}

puts "____________________________________________________"
#8
fruit_string = "boulder, apple, banana, peach, cow"
string_array = fruit_string.split (", ")
p string_array
string_array.pop
p string_array
string_array.shift
p string_array
fruit_string1 = string_array.join(", ")
puts fruit_string1

puts "____________________________________________________"
#9

def with_these_numbers (num1, num2)
  yield num1, num2
end

with_these_numbers(1, 4) do |first, second|
  puts first + second # Output: 5
end

with_these_numbers(3, 6) do |first, second|
  puts first * second # Output: 18
end

with_these_numbers(12, 3) do |first, second|
  puts first / second # Output: 4
end

puts "____________________________________________________"
#10

class Rectangle
  attr_reader :width, :height

  def width=(value)
    if value < 0
      raise "Width can't be negative!"
    end
    @width = value
  end

  def height=(value)
    if value < 0
      raise "Height can't be negative!"
    end
    @height = value
  end

  private
  def area
    width * height
  end
end

class Square < Rectangle
  def width=(value)
    if value < 0
      raise "Width can't be negative!"
    end
    @width = @height = value
  end

  def height=(value)
    if value < 0
      raise "Height can't be negative!"
    end
    @height = @width = value
  end

  def s_area
    area
  end
end

square1 = Square.new
square1.width = 10
puts square1.s_area
