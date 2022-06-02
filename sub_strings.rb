# To-do
# ✓ First arg: word(s)
# ✓ Second arg: dictionary (array of valid substrings)
# ✓ Return a hash: each substring (case insensitive) => number of times
# * Recall how to turn strings into arrays and vice versa
# ? Optimize (Finding substrings appears to be O(n^2))

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
  result = Hash.new(0)
  array_of_words = string.split(" ")
  array_of_words.each do |word|
    dictionary.each do |entry|
      if word.downcase.include?(entry) # case-insensitive comparison
        result[entry] += 1
      end
    end
  end
  puts result.sort.to_h # Sort hash keys alphabetically
end

# Tests
substrings("below", dictionary)
# => { "below" => 1, "low" => 1 }
puts ''
substrings("Howdy partner, sit down! How's it going?", dictionary)
puts ''
# => { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
