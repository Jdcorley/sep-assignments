require 'benchmark'


test_array = (1..50).to_a.shuffle 
array_before = print test_array


time = Benchmark.realtime do 

  def quicksort(array, left=0, right=nil)
    right = array.length-1 if right == nil 
    return array if left >= right

    pivot = left
    (pivot+1..right).each do |i| 
    if array[i] < array[pivot]
      temp = array[i]
      array[i] = array[pivot+1]
      array[pivot+1] = array[pivot]
      array[pivot] = temp 
      end 
    end 
    quicksort(array, left, pivot-1)
    quicksort(array, pivot+1, right)
    return array
  end  
end 

test_me = quicksort(test_array)
puts "#{array_before}\n took quicksort #{time}\n to sort into:\n #{test_me}."