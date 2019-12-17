require 'csv'
require_relative 'csv_reader'

reader = CsvReader.new

ARGV.each do |csv_file_name|
  STDERR.puts "Processing #{csv_file_name}"
  reader.read_in_csv_data(csv_file_name)
end

puts "Total debt = #{reader.total_debt}"
gpa = reader.student_gpa
p gpa
arr2 = reader.second_csv_array('names.csv')
p arr2

arr2.each do |i|
  gpa.each do |k, v|
    if i == gpa[k]
      puts "Student with matching name is - #{i}, who has GPA of #{gpa.keys[0]}"
    end
  end
end
