# CHAPTER 10

## Shuffling via recursion

def shuffle arr
  rec_shuffle arr, []
end

def rec_shuffle submitted, shuffled   # Base case, then recursive case
  # First, the base case:
  if submitted.length <= 0            # If [submitted] is empty, then all words have been sorted. Return [sorted] list
    return shuffled                     # and stop. Or does is each instance of [submitted] replaced in the method by [unsorted]
                                      # after the first run-through?
  end

  smallest = submitted.pop            # Remove 'can' from [submitted] and assign it to [smallest]
  unshuffled = []                       # This is the temporary array to dump the still-unsorted words
                                      # each time the method runs, correct? And it empties each time? If it's emptied, don't we
                                      # lose the unsorted words? Or is the [submitted] array retained throughout until it's also
                                      # empty?

  submitted.each do |tested_word|     # For each word in the [submitted] array:
    if tested_word < smallest         # SAMPLE: If 'bat' is smaller than 'can' ([smallest])
      unshuffled.push smallest          # add 'can' to the end of [unsorted]
      smallest = tested_word          # and change [smallest] to 'bat'.
                                      # (So this is what cycles through [submitted] and tests each word
                                      # until it finds the smallest word in the array. Then it pushes that word to [sorted]
                                      # and starts over, looking for the next smallest word.)
    else
      unshuffled.push tested_word       # Otherwise, if [tested_word] is bigger than [smallest],
                                      # add [tested_word] to the end of [unsorted], because we know it isn't the
                                      # smallest.
    end
  end                                 # What is this ending?

  shuffled.push smallest                # Add 'bat' to [sorted], because now we know it's the smallest.
  rec_shuffle unshuffled, shuffled           # Call rec_sort again, but this time using [unsorted] rather than [submitted].
                                      # [submitted] is only used the first time to establish the original list. After that,
                                      # the method continues to add words to either [unsorted] or [sorted] until
                                      # [unsorted] is empty.
end

puts(shuffle([1, 2, 3, 4, 5, 6, 7, 8, 9]))

