require 'pry'

users = {
  "Jonathan" => {
    :twitter => "tronathan",
    :favorite_numbers => [12, 42, 75],
  },
  "Erik" => {
    :twitter => "sferik",
    :favorite_numbers => [8, 12, 24],
  },
  "Anil" => {
    :twitter => "bridgpal",
    :favorite_numbers => [12, 14, 85],
  },
}

twitter = {
  'Jonathan' => 'tronathan',
  'Erik' => 'sferik',
  'Anvil' => 'bridgpal'
}

favorite_numbers = {
  'Jonathan' => [12,42,75],
  'Erik' => [8,12,85],
  'Anvil' => [12,14,85]
}

user = ["Jonathan","Erik","Anvil"]

binding.pry

# How would you access Jonathan's Twitter handle (i.e. the string "tronathan")?

##                 twitter["Jonathan"]

# How would you add the number 7 to Erik's favorite numbers?

##            favorite_numbers["Erik"].push 7

# How would you add yourself to the users hash?

##         users["Lawrence"] = {:twitter => "lawrencely667", :favourite_numers => [20,10,12] }

##          user.push "Lawrence"

# How would you return the array of Erik's favorite numbers?

##        favorite_numbers["Erik"]

# How would you return the smallest of Erik's favorite numbers?

##         favorite_numbers["Erik"].sort

# How would you return an array of Anil's favorite numbers that are also even?

##          favorite_numbers["Anil"].select {|num| num.even?}

# How would you return an array of the favorite numbers common to all users?

##                  favorite_numbers.select

# How would you return an array containing all users' favorite numbers, sorted, and excluding duplicates?
