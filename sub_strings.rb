# To-do
# - First arg: word(s)
# - Second arg: dictionary (array of valid substrings)
# - Return a hash: each substring (case insensitive) => number of times
# * Recall how to turn strings into arrays and vice versa

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def sub_strings(*keywords, dictionary)

end

# Tests
# substrings("below", dictionary)
# => { "below" => 1, "low" => 1 }
# puts ''
# substrings("Howdy partner, sit down! How's it going?", dictionary)
# puts ''
# => { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
