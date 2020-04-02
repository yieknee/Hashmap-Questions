def intersection(list1, list2)
  hash_table = {}
  intersection_array = []
 
  list1.each do |num|
    hash_table[num] = 1
  end
  
  list2.each do |num|
    intersection_array << num if hash_table[num]
  end

  return intersection_array
end