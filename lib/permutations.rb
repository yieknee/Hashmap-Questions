# time complexity: O(n + m)
# space complexity: O(n)

def permutations?(string1, string2)
  return true if string1.empty? && string2.empty?
  
  split_string1 = string1.chars
  split_string2 = string2.chars

  hash_table = {}
  
  split_string1.each do |char|
    value = hash_table[char]
    hash_table[char] ? hash_table[char] = value + 1 : hash_table[char] = 1
  end

  split_string2.each do |char|
    value = hash_table[char]
    hash_table[char] ? hash_table[char] = value - 1 :  false
  end

  return hash_table.values.sum == 0 && hash_table.values.min == 0 ? true : false

end