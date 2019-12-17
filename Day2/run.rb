min_palindrom = 10001
max_palindrom = 997799
min_pattern = 100
max_pattern = 1000

def palindroms_from_pattern(pattern)
    pattern_str = pattern.to_s
    [ pattern_str + pattern_str.reverse, pattern_str + pattern_str.reverse[1..-1] ]
        .map {|item| item.to_i}
end

def exist_multiple?(palindrome)
    root = Math.sqrt(palindrome).to_i
    return false if root > 999
    root.downto(100) do |item|
        return false if palindrome / item > 999
        return true if palindrome % item == 0
    end
    false
end

range_five = []
result = nil
max_pattern.downto(min_pattern) do |pattern|
    palindroms = palindroms_from_pattern(pattern)
    if exist_multiple?(palindroms[0])
        result = palindroms[0]
        break
    end
    range_five << palindroms[1]
end

if result.nil?
    range_five.each do |item|
        if exist_multiple?(item)
            result = item
            break
        end
    end
end

p result
