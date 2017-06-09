
def my_min(list)

  list.each_with_index do |el, i|
    min = true

    list.each_with_index do |el2, i2|
      next if i == i2
      if el2 < el
        min = false
      end
    end
    return el if min
  end
end



def my_min_linear(arr)
  min = arr.first

  arr.each do |el|
    min = el if el < min
  end
  min
end



def largest_contiguous_subsum(array)
  subs = []

  array.each_with_index do |item, i|
    array.each_with_index do |item2, i2|
      subs << array[i..i2] if i <= i2
    end
  end
  largest = -1.0/0
p  subs.each do |sub|
    sum = 0
    sub.each do |el|
      sum += el
    end
    largest = sum if sum > largest
  end
  largest
end

def improved_largest_contiguous_subsum(array)
  return array.max if array.all? {|el| el < 0}
  sum = array.first
  counter = array.first
  array.drop(1).each do |el|
    counter + el < 0 ? counter = 0 : counter += el
    sum = counter if counter > sum
  end
  sum
end

a = [5, 3, -7]
b = [2, 3, -6, 7, -6, 7]
c = [-5, -1, -3]
# p largest_contiguous_subsum(a)
# p largest_contiguous_subsum(b)
# p largest_contiguous_subsum(c)

p improved_largest_contiguous_subsum(a)
p improved_largest_contiguous_subsum(b)
p improved_largest_contiguous_subsum(c)
