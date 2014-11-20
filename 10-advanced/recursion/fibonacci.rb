# returns the nth fibonacci number
def fib_iterative(n)
  a = 1
  b = 1
  count = 2
  while count < n
    b, a = a + b, b #parrallel assignment magic
    count += 1
  end
  b
end


def fib(n)
  if (n <= 2)
    1
  else
    fib(n - 1) + fib(n - 2)
  end
end

fib(5)

require "pry"
binding.pry

RubyProf.start

50.times { |i| fib_iterative(i)}
50.times {|i| fib(i)}

result = RubyProf.stop

printer = Rubyprof::FlatPrinter.new(result)
printer.print(STDOUT)




def factorial(number)
  if (number > 1) # Terminating condition.
    puts "Current value of number is #{ number }"
    number * factorial(number - 1) # A single step closer to the terminating condition.
  else
    1 # Base case.
  end
end

fib(n)
fib(n-1)+ fib(n-2)
