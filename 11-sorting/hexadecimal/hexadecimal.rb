require 'pry'

class Hexadecimal

  DIGITS = {
    '0' => 0,
    '1' => 1,
    '2' => 2,
    '3' => 3,
    '4' => 4,
    '5' => 5,
    '6' => 6,
    '7' => 7,
    '8' => 8,
    '9' => 9,
    'A' => 10,
    'B' => 11,
    'C' => 12,
    'D' => 13,
    'E' => 14,
    'F' => 15
  }

  def initialize(hex)
    @hex = hex
  end

  def to_decimal
    total = 0
    @hex.split("").reverse.each_with_index do |char, i|
      h = DIGITS[char.upcase] || nil
      return 0 if h.nil?
      total += (h * (16 ** i))
    end
    total
  end
end