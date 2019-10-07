def intersection(list1, list2)
  hash = {}
  result = []

  list1.each do |element| 
    hash[element] = true
  end

  list2.each do |element|
    if hash[element]
      result << element
    end
  end

  return result
end