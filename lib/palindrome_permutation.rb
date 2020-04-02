
def palindrome_permutation?(string)
  return true if string.length == 1 || string.length == 0

  split_string = string.chars
  hash_table = {}

  split_string.each do |char|
    value = hash_table[char]
    hash_table[char]? hash_table[char] = value +1 : hash_table[char] = 1
  end

  if string.length.even? 
    odd_count = 0
    hash_table.values.each do |value|
      odd_count += 1 if value.odd?
    end
    odd_count == 0?  true :  false

  elsif string.length.odd? 
    odd_count = 0
    hash_table.values.each do |value|
      odd_count += 1 if value.odd?
    end
    return odd_count == 1
  end
end