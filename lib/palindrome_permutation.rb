
def palindrome_permutation?(string)
  hash = Hash.new(0)
  letters = string.split("")

  letters.each do |letter|
    hash[letter] += 1
  end

  odds = 0

  hash.keys.each do |key|
    odds += hash[key] % 2 == 0 ? 0 : 1
    return false if odds > 1
  end

  return true
end