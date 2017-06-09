require 'byebug'

# this solution has a quadratic time complexity

def bad_two_sum?(arr, target_sum)
  (0...arr.length).each do |i|
    (i+1..arr.length).each do |j|
      return true if i + j == target_sum
    end
  end
  false
end

# this solution has a n log n time complexity

def okay_two_sum?(arr, target_sum)
  arr = arr.sort
  arr.each do |el1|
    return true if arr.drop(el1).bsearch {|el2| el1 + el2 == target_sum}
  end
  false

end

#this solution has a O(n) time complexity

def two_sum?(arr, target_sum)
  nums = Hash.new(0)
  arr.each do |el|
    nums[el] += 1
  end
  nums.each do |k, v|
     target = target_sum - k
    return true if nums[target] >=  1 && target != k
  end
  false
end

arr = [ 0, 1, 5, 7]
p bad_two_sum?(arr, 6) # => should be true
p bad_two_sum?(arr, 10) # => should be false

p okay_two_sum?(arr, 6) # => should be true
p okay_two_sum?(arr, 10) # => should be false


p two_sum?(arr, 6) # => should be true
p two_sum?(arr, 10)
puts arr
p arr.bsearch { |x| (x + 4) == 5 }
