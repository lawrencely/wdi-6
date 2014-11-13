# Write a function that takes a string and returns an array of any hashtags it contains:

# get_tags("Some guy won't hire women because they get pregnant #rorosyd #smdh misandry")

# => ['#rorosyd', '#smdh', '#misandry']

hash_tag = /(#\w+)/

def get_tag(string)
  hash_tags = /(#\w+)/
  hash_array = string.scan(hash_tags).to_a
  p hash_array.flatten
end

get_tag("Some guy won't hire women because they get pregnant #rorosyd #smdh #misandry")
