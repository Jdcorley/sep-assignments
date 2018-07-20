require 'benchmark'

test_array = (1..50).to_a.shuffle 
array_before = print test_array
    
  time = Benchmark.realtime do   

    def bubble_sort(collection)
      n = collection.length 

      begin 
        swapped = false 

        (n-1).times do |i| 

          if collection[i] > collection[i + 1]
            tmp = collection[i] 
            collection[i] = collection[i + 1]
            collection[i + 1] = tmp
            swapped = true 
          end 
        end 
      end until not swapped 

      collection
    end 
  end

  test_me = bubble_sort(test_array)
  puts "#{array_before}\n took bubble sort #{time}\n to sort into:\n #{test_me}."
