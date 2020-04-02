
def permutations?(string1, string2)
  return true if string1.empty? && string2.empty?
  
  split_string1 = string1.chars
  split_string2 = string2.chars

  hash_table = {}
  
  split_string1.each do |char|
    if hash_table[char] == nil
      hash_table[char] = 1
    else
      value = hash_table[char]
      hash_table[char] = value + 1
    end
  end

  split_string2.each do |char|
    value = hash_table[char]
    if hash_table[char] == nil 
      return false
    else
      hash_table[char] = value - 1
    end
  end

  if hash_table.values.min < 0 || hash_table.values.max > 0
    return false
  elsif hash_table.values.sum == 0
    return true
  end

end