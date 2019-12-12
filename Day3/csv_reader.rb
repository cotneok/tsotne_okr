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
  def total_debt
    debt = 0.0
    @students.each {|student| debt += student.debt.to_f}
    debt
  end
end
