# CHAPTER 10

## Sorting via recursion
/ 
* So, we want to sort an array of words, and we know how to find out which of two words comes first
in the dictionary (using <).
* The easiest way to do this is to keep two more lists around: one will be our list of already-sorted words,
   and the other will be our list of still-unsorted words.
* We’ll take our list of words, find the “smallest” word
(that is, the word that would come first in the dictionary), and stick it at the end of the already-sorted list.
* All of the other words go into the still-unsorted list.
* Then you do the same thing again but using the still-unsorted list instead of your original list:
   > Find the smallest word, move it to the sorted list, and move the rest to the unsorted list.
   > Keep going until your still-unsorted list is empty.
* With the recursion, you might need a wrapper method, a tiny method that wraps up another method.
/

def sort original_list
  recursive_sort original_list, []
end

def recursive_sort unsorted_list, sorted_list
  if unsorted_list > 0
    

  else
    return sorted_list
  end
  sorted_list.push smallest
  recursive_sort unsorted_list, sorted_list
end