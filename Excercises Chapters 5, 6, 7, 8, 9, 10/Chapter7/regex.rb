#1 Matching strings wth patterns
string = " This is test string for cars - Mazda and Toyota"
p string =~ /Toyota/
p string =~ /is/
p string =~ /toyota/
puts"___________________________________________________"
#Regex in conditional if/while conditional
if string =~ /Mazda/
  puts "There is car brand Mazda in string"
end
puts"___________________________________________________"
#Writing in files
File.foreach("file.txt").with_index do |line, index|
  puts "#{index}: #{line}" if line =~ //
end
puts"___________________________________________________"
#2 Changing strings with patterns, using sub and gsub methods
puts string.sub(/i/, "I")
puts string.gsub(/i/, "I")
#We create copy of string so original is not mutated, we can use exclamation mark to mutate original string variable.
