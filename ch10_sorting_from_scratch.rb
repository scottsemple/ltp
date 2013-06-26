# CHAPTER 10

## Sorting via recursion (Written from scratch to see if I can remember how this works)

# So, we want to sort an array of words, and we know how to find out which of two words comes first
# in the dictionary (using <).
# The easiest way to do this is to keep two more lists around: one will be our list of sorted words,
#  and the other will be our list of unsorted words.
# We’ll take our list of words, find the “smallest” word
# (that is, the word that would come first in the dictionary), and stick it at the end of the sorted list.
# All of the other words go into the unsorted list.
# Then you do the same thing again but using the unsorted list instead of your submitted list:
#  > Find the smallest word, move it to the sorted list, and move the rest to the unsorted list.
#  > Keep going until your unsorted list is empty.
# With the recursion, you might need a wrapper method, a tiny method that wraps up another method.

def sort arr                          # This wraps rec_sort so that we don't have to always supply [] as a destination array
                                      # for the sorted list. It saves remembering to pass the empty array.
  rec_sort arr, []
end

def rec_sort submitted, sorted        # The parameter arrays correspond to [arr] and [] in the wrapper method, correct?
  if submitted.length <= 0            # If [submitted] is empty, then all words have been sorted. Return [sorted] list
    return sorted                     # and stop. Or does is each instance of [submitted] replaced in the method by [unsorted]
                                      # after the first run-through?
  end

  smallest = submitted.pop            # Remove 'can' from [submitted] and assign it to [smallest]
  unsorted = []                       # This is the temporary array to dump the still-unsorted words
                                      # each time the method runs, correct? And it empties each time? If it's emptied, don't we
                                      # lose the unsorted words? Or is the [submitted] array retained throughout until it's also
                                      # empty?

  submitted.each do |tested_word|     # For each word in the [submitted] array:
    if tested_word < smallest         # SAMPLE: If 'bat' is smaller than 'can' ([smallest])
      unsorted.push smallest          # add 'can' to the end of [unsorted]
      smallest = tested_word          # and change [smallest] to 'bat'.
                                      # (So this is what cycles through [submitted] and tests each word
                                      # until it finds the smallest word in the array. Then it pushes that word to [sorted]
                                      # and starts over, looking for the next smallest word.)
    else
      unsorted.push tested_word       # Otherwise, (if [tested_word] is bigger than [smallest]),
                                      # add [tested_word] to the end of [unsorted], because we know it isn't the
                                      # smallest.
    end
  end                                 # What is this ending?

  sorted.push smallest                # Add 'bat' to [sorted], because now we know it's the smallest.
  rec_sort unsorted, sorted           # Call rec_sort again, but this time using [unsorted] rather than [submitted].
                                      # [submitted] is only used the first time to establish the original list. After that,
                                      # the method continues to add words to either [unsorted] or [sorted] until
                                      # [unsorted] is empty.
end

puts(sort(['bat', 'feel', 'singing', 'like', 'a', 'can']))

