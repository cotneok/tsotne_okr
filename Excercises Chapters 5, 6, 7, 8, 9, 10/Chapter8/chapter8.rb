#1 Method argments
def good_students(std1="Jora", std2="Ruso", *stds)
"#{std1}, #{std2}, #{stds}."
end
puts good_students()
puts good_students("Temo", "Bela", "Bera")
puts good_students("Temo", "Bela", "Bera", "Shmela", "Dshhhhhadsa")
puts"________________________________________________________________"
#2 Splat arguments (which i already used above)
class Car
  def engine_and_gearbox(engine, gearbox)
    "I have #{engine} engine and #{gearbox} gearbox"
  end
end

class SportsCar < Car
  def engine_and_gearbox(*not_used)

  super
  end
end
hellcat = SportsCar.new
puts hellcat.engine_and_gearbox(5.0 , "Automatic")
puts"________________________________________________________________"
#3 Procs
cubes = Proc.new {|number| number ** 3}
a = [1, 2, 3, 4, 5]
a_cubes = a.map(&cubes)
p a_cubes
puts"________________________________________________________________"
class MultiplyBy
  def initialize(name)
    @name = name
  end
  def multiply_by(number)
    multiply_by_two(number)
    multiply_by_three(number)
    multiply_by_four(number)
  end

  private
  def multiply_by_two(number)
    number * 2
  end

  def multiply_by_three(number)
    number * 3
  end

  def multiply_by_four(number)
    number * 4
  end
end
obj = MultiplyBy.new("Two")
puts obj.multiply_by(2)
#note it returns last method value as it is the last statement to be executed in multiply_by method.
puts"________________________________________________________________"
def grade(mark)
  case mark
  when (91..100)
    "You have A"
  when (60..90)
    "You have either B, C or D"
  when (0..59)
    "You are loser"
  else
    "Did you even attend any class?"
  end
end
p grade(95)
p grade(-40)
p grade(75)
puts"________________________________________________________________"
#Return statements in ruby and parallel assignments
def return_example
  (1..50).each do |num|
    addition = num + num
    return num, addition if addition > 20
  end
end
p return_example
puts
a, b = 1, 2
puts 1, b
puts"________________________________________________________________"
#Using splat in method calls
def different_args(one, two, three, four, five, six)
  puts "#{one}, #{two}, #{three}, #{four}, #{five}, #{six}"
end
different_args(*1.upto(6))
different_args("one", *["two", "three", "four"], "five", "six")
puts"________________________________________________________________"
# puts "Please input D for divide and M for multiply"
# operator = gets.chomp
# puts "How many times, please input integer"
# times = Integer(gets)
# if operator =~ /^D/
#   outcome = lambda { |n| n/times }
# elsif operator =~ /^M/
#   outcome = lambda { |n| n*times}
# else
#   puts "Wrong input"
# end
# puts ([2, 4, 6, 8].map(&outcome).join(", "))
puts"________________________________________________________________"
class Books
  def Books.search(title, author, number_of_pages: 200, **rest)
    p [title, author, number_of_pages, rest]
  end
end
Books.search("LOTR", "Tolkien", {genre: "Adventure", rating: 10})
options = { genre: "Fantasy"}
Books.search("Harry Potter", options, {rating: 9})
