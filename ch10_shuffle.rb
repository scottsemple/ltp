# CHAPTER 10

## Shuffling via recursion

def shuffle arr
  rec_shuffle arr, []
end

# Process:
# # Establish the base case for when the shuffle would stop;
# # Randomly select a word from [unshuffled];
# # Move the selection to [shuffled];
# # Repeat until the base case is achieved.

def rec_shuffle unshuffled, shuffled
  # First, the base case:
  if unshuffled.length <= 0                 # If [submitted] (or [unshuffled]) is empty, then all items have been shuffled.
    return shuffled                         # Return [shuffled] and stop.
  end

  index = rand(unshuffled.length)           # Create a random index value.
  shuffled.push unshuffled.delete_at(index) # Randomly select an item from [submitted] (or [unshuffled]), delete it and
                                            # push it to [shuffled].  
  rec_shuffle unshuffled, shuffled
end

puts(shuffle([1, 2, 3, 4, 5, 6, 7, 8, 9]))

