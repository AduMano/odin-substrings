def substrings (text, dictionary)
  words = text.split
  occuring_words = Hash.new(0)

  words.filter_map do |word|
    dictionary.each do |dictionary_word| 
      occuring_words[dictionary_word] += 1 if word.downcase.include?(dictionary_word)
    end
  end

  occuring_words
end

# Test Case
DICTIONARY = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("below", DICTIONARY) 
# => { "below" => 1, "low" => 1 }
puts substrings("Howdy partner, sit down! How's it going?", DICTIONARY)
# => { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }

# Other Test
my_dictionary = ["the", "is", "s", "e"]
puts substrings("Odin, IS, ThE, Best!", my_dictionary)
# => { "is" => 1, "s" => 2, "the" => 1, "e" => 2 }