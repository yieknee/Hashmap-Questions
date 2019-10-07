
def permutations?(string1, string2)
  list1 = string1.split("")
  list2 = string2.split("")

  hash = {}

  list1.each do |letter|
    hash[letter] = hash[letter].nil? ? 1 : hash[letter] + 1
  end

  list2.each do |letter|
    if hash[letter]
      hash[letter] -= 1
    else
      return false
    end
  end

  hash.keys.each do |key|
    if hash[key] != 0
      return false
    end
  end

  return true
end