require 'benchmark'

time = Benchmark.realtime do 
# This method takes n arrays as input and combine them in sorted ascending  order
 def poorly_written_ruby(*arrays)
   combined_array = []
   arrays.each do |array|
     array.each do |value|
       combined_array << value
     end
   end

    def quicksort(array, left=0, right=nil)
      right = array.length - 1 if right == nil 
      return array if left >= right

      pivot = left 
      (pivot..right).each do |i| 
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
     sorted_array = quicksort(combined_array)
    return sorted_array
 end
end 


puts "#{time}"

poorly_written_ruby([10,12,22,34], [2,14,17,86,2,3,6,12])