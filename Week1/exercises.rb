class Student
  attr_accessor :age

  def initialize(name, last_name, age, id)
    @name = name
    @last_name = last_name
    @age = age
    @id = id

  end

  def is_odd
    @age.odd?
  end
end
array = Array.new(3)

student1 = Student.new("Tsotne", "Okrostsvaridze", 29, 1)
student2 = Student.new("Jondi", "Bagaturia", 60, 2)
student3 = Student.new("Yukihiro", "Matsumoto", 50, 3)

array[0] = student1
array[1] = student2
array[2] = student3

puts array.size


puts student1.is_odd

puts "____________________________________________________________________"


arr2 = [1, 3, 5, 7, 10]
sum = 0
arr2.each do |number|
  sum += number
end
puts sum
puts "____________________________________________________________________"

2.times do
  row = 1
  if row.odd?
    print "* "*4
    row += 1
  end
  print "\n"
  if row.even?
    print " *"*3
    row += 1
  end
  print "\n"
end
puts "____________________________________________________________________"

i = 0
2.times do
  while i < 5
    puts " "*i + "*"
    i+=1
  end
  4.downto(0) do
    puts " "*i + "*"
    i-=1
  end
end
puts "____________________________________________________________________"

1.upto(50) do |i|
  if i.even?
    puts i * i
  end
end

puts "____________________________________________________________________"

def arrya_sum(array)
  if array.any?
    sum = 0
    array.each do |number|
      sum += number
    end
    sum
  else
    "zero"
  end
end

arr3 = []
puts arrya_sum(arr3)

puts "____________________________________________________________________"

def arrya_2_sum(array)
  if array.size ==1
    array[0]
  elsif array.size > 1
    array_largest = array.max
    array.delete(array_largest)
    second_largest = array.max
    array_largest + second_largest
  else
    "zero"
  end
end

arr3 = []
puts arrya_2_sum(arr3)

puts "____________________________________________________________________"

def array_sum_to_n(array, n)
  if array.sample(2).sum == n
    true
  elsif array.size == 0 && n == 0
    true
  end
end
arr4 = []
puts array_sum_to_n(arr4, 0)

puts "____________________________________________________________________"

def hash_has_key?(hash, key)
  if hash.has_key?(key)
    true
  else
    false
  end
end

newhash = { "name" => "Tsotne", "surname" => "Okr", "age" => 29 }
emptyhash = {"name" => "Jondi"}
puts hash_has_key?(newhash, "age")
puts hash_has_key?(emptyhash, "surname")

puts "____________________________________________________________________"

def hash_values_to_integer(hash)
  hash.each {|k,v| hash[k] = v.to_i}
end
newhash1 = { "Tsotne" => "1", "Okr" => "2", "Age" => "29" }
p hash_values_to_integer(newhash1)

puts "____________________________________________________________________"

def array_to_hash(array)
  hash = {}
  array.each_with_index do |v, i|
    hash[i] = v
  end
  hash
end
arr5 = [ "bla", "blu", "ehh"]
puts array_to_hash(arr5)
