require 'benchmark'

time = Benchmark.realtime do 
# This method takes n arrays as input and combine them in sorted ascending  order
class Poorly_written_ruby
  attr_accessor :combined_array
  def initialize(*arrays)
    @combined_array = arrays.flatten 
  end 

  def sort_combined
    sorted_array = [combined_array.delete_at(combined_array.length-1)]   
    @combined_array.each do |val|
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
   return sorted_array
 end
end 
end 

puts "#{time}"
test = Poorly_written_ruby.new([10,12,22,34], [2,14,17,86,2,3,6,12])
test.sort_combined
