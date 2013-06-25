# CHAPTER 10

## Sorting via recursion

# So, we want to sort an array of words, and we know how to find out which of two words comes first
# in the dictionary (using <).
# The easiest way to do this is to keep two more lists around: one will be our list of already-sorted words,
#  and the other will be our list of still-unsorted words.
# We\’ll take our list of words, find the “smallest” word
# (that is, the word that would come first in the dictionary), and stick it at the end of the already-sorted list.
# All of the other words go into the still-unsorted list.
# Then you do the same thing again but using the still-unsorted list instead of your original list:
#  > Find the smallest word, move it to the sorted list, and move the rest to the unsorted list.
#  > Keep going until your still-unsorted list is empty.
# With the recursion, you might need a wrapper method, a tiny method that wraps up another method.

def sort arr  # This wraps rec_sort so that we don't have to always supply [] as a destination array for the
              # sorted list. It saves remembering to pass the empty array.
  rec_sort arr, []
end

def rec_sort submitted_list, sorted   # The parameter arrays correspond to [arr] and [] in the wrapper method, correct?
  if submitted_list.length <= 0       # If [submitted_list] is empty, then all words have been sorted. Return [sorted] list
    return sorted                     # and stop.
  end

  smallest = submitted_list.pop       # Remove 'can' from [submitted_list] and assign it to [smallest]
  still_unsorted = []                 # This is the temporary array to dump the still-unsorted words
                                      # each time the method runs, correct? And it empties each time?

  submitted_list.each do |tested_word|# For each word in the [submitted_list] array:
    if tested_word < smallest         # If 'bat' is smaller than 'can' ([smallest])
      still_unsorted.push smallest    # add 'can' to the end of [still_unsorted]
      smallest = tested_word          # and change [smallest] to 'bat'.
                                      # (So this is what cycles through [submitted_list] and tests each word
                                      # until it finds the smallest word in the array. Then it pushes that word to [sorted]
                                      # and starts over, looking for the next smallest word.)
    else
      still_unsorted.push tested_word # Otherwise, if [tested_word] is bigger than [smallest],
                                      # add [tested_word] to the end of [still_unsorted], because we know it isn't the
                                      # smallest.
    end
  end                                 # What is this ending?

  sorted.push smallest                # Add 'bat' to [sorted], because now we know it's the smallest.
  rec_sort still_unsorted, sorted     # Call rec_sort again, but this time using [still_unsorted] rather than [submitted_list].
                                      # [submitted_list] is only used the first time to establish the original list. After that,
                                      # the method continues to add words to either [still_unsorted] or [sorted] until
                                      # [still_unsorted] is empty.
end

puts(sort(['bat', 'feel', 'singing', 'like', 'a', 'can']))

