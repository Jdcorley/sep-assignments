require 'benchmark'

test_array = (1..50).to_a.shuffle 
array_before = print test_array
  
    time = Benchmark.realtime do 

      def merge_sort(collection)

        if collection.length <= 1
          collection 
        else 

          mid = (collection.length / 2).floor 
          left = merge_sort(collection[0..mid - 1])
          right = merge_sort(collection[mid..collection.length]) 

          merge(left, right)
        end 
      end 

      def merge(left, right)
        if left.empty?

          right 
        elsif right.empty?

          left
        elsif left.first < right.first

          [left.first] + merge(left[1..left.length], right)
        else

          [right.first] + merge(left, right[1..right.length])
        end 
      end 
    end 

test_me = merge_sort(test_array)
puts "#{array_before}\n took merge sort #{time}\n to sort into:\n #{test_me}."

