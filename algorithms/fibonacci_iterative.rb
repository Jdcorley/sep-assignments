require 'benchmark'

runtime = Benchmark.realtime do 

  def fib(n)
    n = n 
    fib_0 = 0
    fib_1 = 1
    case 
    when n <= 0 
      fib_0 
    when n === 1 || n === 2
      fib_1 
    else
      fib(n-1) + fib(n-2)
    end  
  end 
end 

puts fib(0)
puts fib(1)
puts fib(2)
puts fib(3)
puts fib(4)
puts fib(5)
puts fib(6)
puts fib(7)
puts fib(8)
puts fib(9)
"Runtime: #{runtime}"
