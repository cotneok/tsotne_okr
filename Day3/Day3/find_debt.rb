require 'csv'
require_relative 'student_class'
require_relative 'csv_reader'

class FindDebt

  def initialize
    @students = []
  end

  def read_from_terminal
    ARGV.clear
    puts "Whats your name?"
    @students << gets.chomp
  end

  def student_debt
    @students.each do |student|
      if @students.name == student.name
        puts "Your debt is: student.debt"
      else
        puts "You have no debt"
      end
    end
  end
end

new_input = FindDebt.new
new_input.read_from_terminal
puts new_input.student_debt
