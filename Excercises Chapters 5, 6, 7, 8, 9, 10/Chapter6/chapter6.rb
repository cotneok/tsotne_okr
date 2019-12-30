#1 automatic conversion

num = 9999999999999999999999999999999999999999999999999999999999999

2.times do
  puts "#{num.class}: #{num}"
  num /= num
end

num = 10001
4.times do
puts "#{num.class}: #{num}"
num *= num
end
