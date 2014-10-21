def seed(square_number)
  square_number = square_number * square_number
  square_number - 1
end

puts seed(15)

def seed_total(square)
[1..square].inject {|sum, x| sum + (x * x)}
