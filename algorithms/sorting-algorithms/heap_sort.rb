require 'benchmark'

test_array = (1..50).to_a.shuffle 
array_before = print test_array

time = Benchmark.realtime do 

  def heapsort(array)
    count = array.length 
    a = [nil] + array 

    (count/2).downto(1) do |i|
      heapify(a, i, count)
    end 

    while count > 1 
      a[1], a[count], = a[count], a[1]
      count -= 1
      heapify(a, 1, count)
    end 
    a.drop(1)
  end 

  def heapify(array, parent, limit)
    root = array[parent]
    while(child = 2 * parent) <= limit
      child += 1 if child < limit && array[child] < array[child+1]
      break if root >= array[child]
      array[parent], parent = array[child], child 
    array[parent] = root 
    end 
  end 
end 

test_me = heapsort(test_array)
puts "#{array_before}\n took heapsort #{time}\n to sort into:\n #{test_me}."