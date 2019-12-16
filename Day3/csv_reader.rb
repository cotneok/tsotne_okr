require 'csv'
require_relative 'student_class'

class CsvReader
  def initialize
    @students = []
  end
  def read_in_csv_data(csv_file)
    CSV.foreach(csv_file, headers: true) do |row|
      @students << Student.new(row["name"], row["last_name"], row["gpa"], row["debt"])
    end
  end

  def students
    @students
  end
  def total_debt
    debt = 0.0
    @students.each {|student| debt += student.debt.to_f}
    debt
  end

  def student_debt
    ARGV.clear
    value = gets.chomp
    @students.each do |i|
      if i.name == value
        puts "Student #{i.name} has following debt - #{i.debt}"
      end
    end
  end

  # def read_gpa(csv_file)
  #   student_gpa = {}
	# 	CSV.foreach(csv_file, headers: true) do |row|
	# 		student = "#{row['name']}"
	# 		student_gpa[student] = @students[student]['gpa']
	# 	end
	# 	student_gpa
	# end
end
