def first_anagram?(string, target_string)
  anagrams = string.split('').to_a.permutation.to_a
  anagrams.include?(target_string.split('').to_a)
end

def second_anagram?(string, target_string)
  string = string.chars
  target_string = target_string.split('')

  target_string.length.times do
    target_string.delete(string.shift)
  end
  string == target_string
end


def third_anagram(string, target_string)
  string.chars.sort == target_string.chars.sort
end



def fourth_anagram?(string, target_string)
  hash = Hash.new(0)
  hash1 = Hash.new(0)

  string.chars.each do |ch|
    hash[ch] += 1
  end

  target_string.chars.each do |ch1|
    hash1[ch1] += 1
  end

  hash.each do |k, v|
    return false unless v == hash1[k]
  end
  true

end

p fourth_anagram?('elvis', 'lives')

p first_anagram?('elvis', 'lives')
p second_anagram?('elvis', 'lives')
p third_anagram('elvis', 'lives')
