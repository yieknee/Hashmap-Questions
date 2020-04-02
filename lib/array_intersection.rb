def intersection(list1, list2)
  hash_table = {}
  intersection_array = []
  if list1.length < list2.length
    list1.each do |num|
      hash_table[num] = true
    end

    list2.each do |num|
      intersection_array << num if hash_table[num] != nil
    end
  elsif list2.length < list1.length
    list2.each do |num|
      hash_table[num] = false
    end

    list1.each do |num|
      intersection_array << num if hash_table[num] != nil
    end
  else 
    list1.each do |num|
      hash_table[num] = false
    end
    
    list2.each do |num|
      intersection_array << num if hash_table[num] != nil
    end
  end
  
  return intersection_array
end