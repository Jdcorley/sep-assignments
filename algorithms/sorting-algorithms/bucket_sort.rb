require 'benchmark'

test_array = (1..50).to_a.shuffle 
array_before = print test_array

time = Benchmark.realtime do 


  def bucket_sort(array)
    max = array.max 
    buckets = Array.new(max+1, 0)
    array.each do |i|
    buckets[i] += 1
  end

    sorted = []
    buckets.each_index do |index|
    buckets[index].times { sorted << index }
  end
    sorted
  end
end 

test_me = bucket_sort(test_array)
puts "#{array_before}\n took bucket sort #{time}\n to sort into:\n #{test_me}."