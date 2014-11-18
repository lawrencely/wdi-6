# BinarySearch(array, value) {
#     low = 0
#     high = array.length - 1
#     while (low <= high) {
#         mid = (low + high) / 2
#         if (A[mid] > value)
#             high = mid - 1
#         else if (A[mid] < value)
#             low = mid + 1
#         else
#             return mid
#     }
#     return not_found
# }

def binary_search(array, value)
  low = 0
  high = array.length - 1
  while low <= high
    mid = (low + high) / 2
    if array[mid] > value
      high = mid - 1
      puts "went half way to #{ array[mid] } now looking lower"
    elsif array[mid] < value
      low = mid + 1
      puts "went half way to #{ array[mid] } now looking higher"
    elsif
      puts "found #{ value }"
    else
      return mid
    end
  end
end

range = (1..100).to_a

binary_search(range, 77)

[20,30,40].each do |num|
  if binary_search(range, num)
    puts num
  else
    puts "not here"
  end
end