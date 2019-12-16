require 'csv'
require_relative 'csv_reader'

reader = CsvReader.new

ARGV.each do |csv_file_name|
  STDERR.puts "Processing #{csv_file_name}"
  reader.read_in_csv_data(csv_file_name)
end

puts "Total debt = #{reader.total_debt}"
reader.student_debt
# reader.read_gpa('names.csv')
