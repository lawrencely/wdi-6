def palindrome(number)
  number = number.to_s.split('')
  if number.reverse == number
    p "its a palindrome"
    #figure out how to find palindromic products
  else
    puts "its not a palindrom"
  end
end


