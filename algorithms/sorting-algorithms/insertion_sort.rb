require 'benchmark'

test_array = (1..50).to_a.shuffle 
array_before = print test_array

  time = Benchmark.realtime do 
    
    def insert_sort(collection)

      sorted_collection = [collection.delete_at(0)]

      for val in collection 
        sorted_collection_index = 0 

        while sorted_collection_index < sorted_collection.length 
          if val <= sorted_collection[sorted_collection_index] 

            sorted_collection.insert(sorted_collection_index, val)
            break
          elsif sorted_collection_index == sorted_collection_index - 1

            sorted_collection.insert(sorted_collection_index + 1, val) 
            break
          end 

          sorted_collection_index += 1 
        end 
      end 

      sorted_collection
    end 
  end 

test_me = insert_sort(test_array)
puts "#{array_before}\n took insert sort #{time}\n to sort into:\n #{test_me}."



