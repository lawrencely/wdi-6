require 'prime'
class Raindrops
  def convert(n)
      if n % 3 || 11 || 2 == 0
        "Pling"
      elsif n % 5 || 11 || 2 == 0
        "Plang"
      elsif n % 7 || 11 || 2 == 0
        "Plong"
      elsif n % 2 || 3 || 5 || 7 || 11
        n
      end
  end
end
require 'pry'
binding.pry