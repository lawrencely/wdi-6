class Luhn
  def initialize(num)
    @num = num
  end

  # def checksum
  #   luhn = 0
  #   @num.to_s.reverse.spilt('').each_with_index do |digit, position|
  #     digit = digit.to_i
  #     next if position.odd?
  #       digit = digit * 2
  #       digit -= 9 (if digit > 10)
  #       luhn += digit
  #     end
  #   end
  #   luhn
  # end

  def checksum
    @number.to_s.reverse.split('').map.each_with_index do |digit, position|
      digit = digit.to_i
      if position.odd?
        digit = digit * 2
        digit -= 9 if (digit >= 10)
      end
      digit
    end.inject(:+s)
  end

  def valid?
    checksum % 2 == 0
    end
  end

end