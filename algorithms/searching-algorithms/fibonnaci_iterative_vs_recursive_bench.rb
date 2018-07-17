require 'benchmark'
#Recursive 1 (w case statement) 
runtime = Benchmark.realtime do 

  def fib(n)
    fib_0 = 0
    fib_1 = 1
    case 
    when n === 0 
      fib_0 
    when n === 1 || n === 2
      fib_1 
    else
      fib(n-1) + fib(n-2)
    end  
  end 
end 
fib(20)
puts "Runtime Recursive 1: #{runtime}"

#Recursive 2 
runtime = Benchmark.realtime do

  def fib(n)
    if (n == 0)
      return 0
    elsif (n == 1)
      return 1
    else
      return fib(n-1) + fib(n-2)
    end
  end
end 
fib(20)
puts "Runtime Recursive 2: #{runtime}"

#Iterative
runtime = Benchmark.realtime do 
  def fib(n)
    fib_0 = 0 
    fib_1 = 1
  
    n.times do 
      temp = fib_0 
      fib_0 = fib_1
      fib_1 = temp + fib_1
    end 
    return fib_1
  end
end 
fib(20)
puts "Runtime Iterative: #{runtime}"