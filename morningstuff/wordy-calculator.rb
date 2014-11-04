# Write a program that takes a word problem in the format:
# What is 5 plus 13?
# and returns the answer as an integer.
# The program should handle large numbers and negative numbers.

Class Calculator
  def ask(question)
    parts = question.split(/\s+/)
    parts.each do |word|
      if word.match \/d+/
        index = i
        break
      end
    end

    if index.nil?
      raise " No numbers found "
    end
    operand1 = parts[index].to_f
    operator = parts[index + 1].downcase
    operand2 = parts[index + 2]to_f

    p [operand1, operator, operand2]

    result = case operator
    when "plus" then operand1 + operand2
    when "minus" then operand1 - operand2
    end

    result
  end
end

require 'pry'
binding.pry

