require 'benchmark'

runtime = Benchmark.realtime do 

def binary_search(item_to_find, array)
  left = 0
  right = array.length - 1
  counter = 0
    while left <= right 
      middle = (left+right)/2 
      counter+=1
      if item_to_find < array[middle]
        right = middle - 1 
      elsif item_to_find > array[middle]
        left = middle + 1
      elsif item_to_find == array[middle]
        puts "We found #{item_to_find} at index #{middle}. It took #{counter} steps."
        return middle 
      end 
    end 
  end
end 

get_me = 545
test_array = (1..1000).each.to_a
puts binary_search(get_me, test_array)
puts "Iterative Binary Search for #{test_array.length} item array: #{runtime}"


