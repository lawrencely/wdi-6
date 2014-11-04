class Sieve
  def self.primes(bound)
    numbers = (2..bound).to_a
    primes = []
    while candidate = numbers.shift
      primes << candidate
      numbers = numbers.reject { |n| n % candidate == 0 }
    end

    primes
  end
end



require 'pry'

  primes_less_than_100 = Sieve.primes(100)

binding.pry