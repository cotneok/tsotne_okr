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

  def student_gpa
    hash_gpa = {}
    @students.each do |i|
      hash_gpa[i.gpa] = i.name
    end
    hash_gpa
  end

  def second_csv_array(filename)
    arr1 = []
    CSV.foreach(filename, headers: true) do |row|
			student = "#{row['name']}"
			arr1 << student
		end
		arr1
  end
end
