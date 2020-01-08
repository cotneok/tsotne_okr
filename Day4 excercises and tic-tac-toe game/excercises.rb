#1
numbers = [1, 2, 3, 4, 5]
numbers.find { |number| number > 2 }
numbers.find_all { |number| number > 2 }
numbers.map { |number| "$" * number }
numbers.reject { |number| number > 2 }
numbers.partition { |number| number > 2 }
strings = ["Ruby", "is", "so", "cool"]
strings.find { |string| string.length > 2 }
strings.find_all { |string| string.length > 2 }
strings.reject { |string| string.length > 2 }
strings.partition { |string| string.length > 2 }
puts"____________________________________________"
#2
def english_date(iso_date)
  # To make the code below work, define a
  # month_names hash with "01" through "12"
  # as keys, and "January" through "December"
  # as values.
  date_parts = iso_date.split("-")
  year = date_parts[0]
  month = date_parts[1]
  day = date_parts[2]
  month_names = {"01" => "January", "02" => "February", "03" => "March", "04" => "Arpil",
                  "05" => "May", "06" => "June", "07" => "July", "08" => "August",
                  "09" => "September", "10" => "October", "11" => "November", "12" => "December",}
  "#{month_names[month]} #{day}, #{year}"
end
puts english_date("2002-12-20")
puts"____________________________________________"
#3
# class MotorizedBatteryPoweredThing
#   attr_accessor :power_level
#
#   def initialize
#     self.power_level = 0
#   end
#
#   def charge
#     self.power_level += 1
#   end
#
#   def rev_motor
#     puts "Revving motor!"
#   end
# end
require_relative 'motorized.rb'
require_relative 'batterypowered.rb'

class Drill
  include Motorized
  include BatteryPowered
end

class ElectricCar
  include Motorized
  include BatteryPowered
end

class Phone
  include BatteryPowered
end

drill = Drill.new
drill.charge
puts drill.power_level

car = ElectricCar.new
car.charge
car.rev_motor

phone = Phone.new
phone.charge
# Maybe a Phone shouldn't have this method...
# phone.rev_motor
puts phone.power_level
puts"____________________________________________"
#4

class Grade
  include Comparable
  VALIDATES = ["A", "B", "C", "D", "F"]
  attr_accessor :letter

    def initialize(letter)
    @letter = letter
  end

  def letter=(grade)
    unless VALIDATES.include?(grade)
      raise "#{grade} is not valid, please enter A, B, C, D, or F"
    end
    @letter = grade
  end

  def <=>(other)
    if other.letter < letter
      return -1
    elsif other.letter > letter
      return 1
    else
      return 0
    end
  end

end

a_grade = Grade.new("A")
b_grade = Grade.new("B")
c_grade = Grade.new("C")
d_grade = Grade.new("D")
f_grade = Grade.new("F")
puts "a_grade > c_grade: #{a_grade > c_grade}"
puts "f_grade < d_grade: #{f_grade < d_grade}"
puts "b_grade > a_grade: #{b_grade > a_grade}"
puts "a_grade == a_grade: #{a_grade == a_grade}"
