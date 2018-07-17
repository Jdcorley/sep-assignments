require 'benchmark'

runtime = Benchmark.realtime do 

  def binary_search(item_to_find, array)
    left = 0
    right = array.length-1
    middle = (left + right)/2
    if array.length == 0
      return "#{item_to_find} was not found in the array."
    elsif item_to_find == array[middle]
      return "#{item_to_find} found."
    elsif array[middle] < item_to_find
      return binary_search(item_to_find, array[middle+1, right])
    elsif array[middle] > item_to_find 
      return binary_search(item_to_find, array[left, middle-1])
    end
  end 
end 

get_me = 64
test_array = (1..100).each.to_a
puts binary_search(get_me, test_array)
puts "Recursive Binary Search for #{test_array.length} item array: #{runtime}."