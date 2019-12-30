#1 automatic conversion

num = 999999999999999999999999

2.times do
  puts "#{num.class}: #{num}"
  num /= num
end

num = 10001
4.times do
puts "#{num.class}: #{num}"
num *= num
end
#looks like there is no bignum any more in Ruby ))
#2 Looping Using Numbers
10.times {print "Tsotne", " "}
puts
100.upto(110).with_index {|x, i| puts "Index #{i} has following number - #{x}"}
puts
100.step(260, 20) {|x| puts x}
#3 Strings
p %/Single quoted string/
p %!Double quoted string!

string1 = <<This_will_be_the_end
The body of the string is the input lines up to
one starting with the same text that followed the '<<'
This_will_be_the_end
puts string1
#4 Ranges and sequences
p (1..10).to_a
p (1...10).to_a
arr = (1..8).to_a
puts arr.max
puts arr.inject(:+)
