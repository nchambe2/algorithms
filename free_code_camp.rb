#Basic algorithm problems
def meetBonfire
    "You can read this text"
    return true
end

#++++++++++++++++++++++++++++++
def reverseString(word)
  reversed_word = word.reverse
  p reversed_word
end

reverseString("hello")
reverseString("Howdy")
reverseString("Greetings from earth")

#++++++++++++++++++++++++++++++
def factorialize(number)

  if number == 0
    p 1
  else
   p (1..number).reduce(:*)
  end

end

factorialize(5)
factorialize(10)
factorialize(20)
factorialize(0)

#++++++++++++++++++++++++++++++
#palindromes
#INPUT: Word
#Change the word to lowercase and strip out all spaces and punctuation
#Reverse the word
#Compare the original word to the reversed word
# IF true THEN
#     return true
# Else
#    return false
#END IF
#OUTPUT: Return true if the given string is spelled the same forward and backwards. Return false if it's not

def palindrome(word)
  word = word.strip.downcase.split("")
  reverse_word = word.reverse

  #word.each_byte do |byte|

#end
end

palindrome(" Eye-ball ")

#++++++++++++++++++++++++++++++
def find_longest_word(sentence)
    word_array = sentence.split(" ")
    max_word = word_array.max_by {|word| word.length }
    p max_word.length
end

find_longest_word("The quick brown fox jumped over the lazy dog.")
find_longest_word("May the force be with you")
find_longest_word("Google do a barrel roll")
find_longest_word("What is the average airspeed velocity of an unladen swallow")
find_longest_word("What if we try a super-long word such as otorhinolaryngology")


#++++++++++++++++++++++++++++++
def title_case(sentence)
    sentence_array = sentence.split(" ")
    sentence_array.map! do |word|
       word.capitalize
    end

    p sentence_array
end
title_case("I'm a little tea pot")
title_case("sHoRt AnD sToUt")
title_case("HERE IS MY HANDLE HERE IS MY SPOUT")

#++++++++++++++++++++++++++++++
def largest_of_four(array)
  max_of_each_row = []
  array.each do |row|
      max_of_each_row << row.max
  end
  p max_of_each_row
end

largest_of_four([[13, 27, 18, 26], [4, 5, 1, 3], [32, 35, 37, 39], [1000, 1001, 857, 1]])
largest_of_four([[4, 9, 1, 3], [13, 35, 18, 26], [32, 35, 97, 39], [1000000, 1001, 857, 1]])

#++++++++++++++++++++++++++++++++
def confirm_ending(string, target)
  last_value = string.split(" ").last
  p last_value
  p last_value.include?(target) ? "True" : "False"
end

confirm_ending("Bastian", "n")
confirm_ending("Connor", "n")
confirm_ending("Walking on water and developing software from a specification are easy if both are frozen", "specification")
confirm_ending("He has to give me a new name", "name")
confirm_ending("He has to give me a new name", "me")
confirm_ending("He has to give me a new name", "na")
confirm_ending("If you want to save our world, you must hurry. We dont know how much longer we can withstand the nothing", "mountain")

#++++++++++++++++++++++++++++++
def repeat(string, number)
  number.times do
    string = string + string
  end
end

repeat("*", 3)
repeat("abc", 3)
repeat("abc", 4)
repeat("abc", 1)
repeat("*", 8)
repeat("abc", -2)

#INPUT: Sentence & Number
#IF sentence.length > number THEN
#   append ... to the end of the sentence
#   full sentence length should now be 11
#IF sentence.length <= 3 THEN
#   return sentence+ ...
#OUTPUT: Return truncated sentence if length > number
def truncate(string,number)
  potential_word = string + "..."
  if potential_word.length > number
      number = number-1
      sliced_string = potential_word.slice(-3..-1)
      sliced_string
      # p truncated_word = sliced_string + "..."
      # p truncated_word.length
      # p sliced_string.length
  end
end
 truncate("A-tisket a-tasket A green and yellow basket", 11)

#++++++++++++++++++++++++++++++
def chunk(array, size)
  array.each_slice(size) { |number| p number}
end

chunk(["a", "b", "c", "d"],2)

#++++++++++++++++++++++++++++++
#INPUT: Obtain a collection of values and number
#Starting from the beginning of the collection
  #Delete values based on the number
  #Return the new collection
#OUTPUT: Return the shrunken collection based on the value of the number

def slasher(array, how_many)
 p array.drop(how_many)
end

slasher([1,2,3],2)

#++++++++++++++++++++++++++++++
#INPUT: Obtain two words in a collection
#Split the two words and store them in two different collection objects
#Convert the words into lowercase
#Check to see if the first word includes the same letters as the first word
#Return true if it does
#Else return false
#OUTPUT: Return true if both words contain same letters. Else return false
def mutation(array)
  first_word = array[0].downcase
  second_word = array[1].downcase

  p first_word
  p second_word

  if first_word.include?(second_word)
      p true
  else
      p false
  end
end

mutation(["Mary", "Army"])

#Where do I belong
def where(array, num)
  sorted_array = array.sort
  num_to_place = num


  sorted_array.map do |number|
      if number > num_to_place
         index_num = sorted_array.index(number)
         index_num - 1
      end
  end
  #p sorted_array.index(highest_num)
end

where([40, 60, 30], 50)