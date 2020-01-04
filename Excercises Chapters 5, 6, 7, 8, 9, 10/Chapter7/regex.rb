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
  puts "#{index}: #{line}" if line =~ /o/
end
puts"___________________________________________________"
#2 Changing strings with patterns, using sub and gsub methods
puts string.sub(/i/, "I")
puts string.gsub(/i/, "I")
puts"___________________________________________________"
#We create copy of string so original is not mutated, we can use exclamation mark to mutate original string variable.
#3 Digging Deeper
string = "My name is Tsotne"
pattern = /Ts/
puts string =~ pattern
puts"___________________________________________________"
surname = "Okrostsvaridze"
pattern1 = /t/
pattern2 = /x/
puts pattern1.match(surname)
p pattern2.match(surname)
puts surname =~ pattern1
puts"___________________________________________________"
#4 Anchors
def show_regexp(string, pattern)
  match = pattern.match(string)
  if match
    "#{match.pre_match}->#{match[0]}<-#{match.post_match}"
  else
    "no match"
  end
end
str = "This is a sample\nstring which is nice"
p show_regexp(str, /^str/)
p show_regexp(str, /^This/)
p show_regexp(str, /\AThis/)
p show_regexp(str, /ple$/)
p show_regexp(str, /\Astr/)
puts"___________________________________________________"
#5 Character classes
number = "Mobile phone numbers in Georgia are like this: 595 37 36 37"
p show_regexp(number, /\d/)
p show_regexp(number, /\d+/)
p show_regexp(number, /\s/)
p show_regexp(number, /[aeiou]/)
