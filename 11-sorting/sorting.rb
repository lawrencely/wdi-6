nums = [8,5,6,2,5,7,1]

def bubble(ary) #bubble sorting method
  swapped = true # setting swapped true so while will run
  while swapped
    swapped = false # resetting swapped to false so that the loop can break out later
    (ary.length - 1).times do |i| #running loop with the index value
      if ary[i] > ary[i+1] #checking conditionals
        ary[i], ary[i+1] = ary[i+1], ary[i] #swapped the 2 arrays
        swapped = true # when run reset the swapped value to true so loop will run again
      end
    end
  end
  ary
end

p bubble(nums)


def insert_sort(list) #sorting method
  1.upto(list.length - 1) do |index|
    held = list.delete_at(index)
    position = index - 1
    while held < list(position)
      position -= 1
    end
    list.insert(position + 1, held)
  end
  list
end

insert_sort(nums)

