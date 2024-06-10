# SUBSTRINGS - BASIC RUBY | THE ODIN PROJECT 

Implement a method #substrings that takes a word as the first argument and then an array of valid substrings (your dictionary) as the second argument. It should return a hash listing each substring (case insensitive) that was found in the original string and how many times it was found.

```Ruby
  dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
  => ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
  substrings("below", dictionary)
  => { "below" => 1, "low" => 1 }
```

Next, make sure your method can handle multiple words:

```Ruby
  substrings("Howdy partner, sit down! How's it going?", dictionary)
  => { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
```

Please note the order of your keys might be different.

Quick Tips:

    Recall how to turn strings into arrays and arrays into strings.


## USAGE
  Enter **substrings(text: String, dictionary: Hash)**

  - What to enter in the arguments?
    
    - **text** = This is where you put the string to check the occuring words thats in the dictionary
    - **Hash** = This is where you put the hash of your dictionary, this is the basis for counting the occuring words (Globally)

## TEST RESULT
```Ruby
DICTIONARY = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("below", DICTIONARY) 
# => { "below" => 1, "low" => 1 }
puts substrings("Howdy partner, sit down! How's it going?", DICTIONARY)
# => { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }

# Other Test
my_dictionary = ["the", "is", "s", "e"]
puts substrings("Odin, IS, ThE, Best!", my_dictionary)
# => { "is" => 1, "s" => 2, "the" => 1, "e" => 2 }

```