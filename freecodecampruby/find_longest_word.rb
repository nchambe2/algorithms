#INPUT: Obtain string
#STEPS:
#create individual words out of each string
#find the length of each word in the array
#return the max length
#OUTPUT: Return length of the longest word in the string

def find_longest_word(sentence)
 each_word = sentence.split(" ")
 max_word = each_word.max { |a, b| a.length <=> b.length}
 p max_length = max_word.length
end

find_longest_word("The quick brown fox jumped over the lazy dog")
find_longest_word("May the force be with you")
find_longest_word("Google do a barrel roll")
find_longest_word("What is the average airspeed velocity of an unladen swallow")
find_longest_word("What if we try a super-long word such as otorhinolaryngology")