require 'benchmark'

test_array = (1..50).to_a.shuffle 
array_before = print test_array

  time = Benchmark.realtime do 

    def selection_sort(collection)
      length = collection.length 

      for i in 0..length - 2

        min_index = i 
        
        for j in (i + 1)...length 
          if collection[j] < collection[min_index]

            min_index = j 
          end 
        end 

        tmp = collection[i]
        collection[i] = collection[min_index]
        collection[min_index] = tmp 
      end 
      collection
    end 
  end 


test_me = selection_sort(test_array)
puts "#{array_before}\n took selection sort #{time}\n to sort into:\n #{test_me}."
