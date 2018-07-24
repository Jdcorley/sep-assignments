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

   sorted_array = [combined_array.delete_at(combined_array.length-1)]

   combined_array.each do |val|
     (0..sorted_array.length).each do |i|
       if val < sorted_array[i]
         sorted_array.insert(i, val)
         break
       elsif i == sorted_array.length - 1
         sorted_array << val
         break
       end
       i+=1
     end
   end
   # Return the sorted array
   sorted_array
 end
end 

puts "#{time}"

poorly_written_ruby([10,12,22,34], [2,14,17,86,2,3,6,12])
