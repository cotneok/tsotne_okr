largest = 0
(100..999).each do |first|
  (100..999).each do |second|
    product = first * second
    if product.to_s == product.to_s.reverse && product > largest
      largest = product
    end
  end
end
puts largest
puts "____________________________________________________________________"

smallest = 2520
until (11..20).all?{|i| smallest % i == 0 }
  smallest += 20
end
puts smallest

puts "____________________________________________________________________"

def pythagorean_triplet
  (1..1000).each do |a|
    (2..1000).each do |b|
      c = 1000 - a - b
      if (a**2 + b**2 == c**2) && a<b && b<c
        puts "a = #{a}, b = #{b}, c = #{c}"
        puts "Product of a, b, c = #{a * b * c}"
      end
    end
  end
end

pythagorean_triplet
