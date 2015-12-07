#INPUT: String
#STEPS:
#Create a empty array called reversed array
#Split each character in the string
#Store that in the variable called reversed array
#Then reverse the array.
#Create a variable called reversed word
#Join the word back together again
#Then place the result in the reversed word variable
#OUTPUT: Return the reversed string

def reverse_string(string)
    reversed_array = string.split("").reverse
    p reversed_word = reversed_array.join("")
end

reverse_string("hello")
reverse_string("Howdy")
reverse_string("Greetings from Earth")

#INPUT: Number
#STEPS:
#Create a variable called product
#Multiply num  * num - 1 and store that product in the variable product
#Subtract 1 from num again and multiply that by
#OUTPUT: Product of the range between num and 1
def factorialize(num)
  if num == 0
    1
  else
    (1..num).reduce(:*)
  end
end

p factorialize(5)
p factorialize(10)
p factorialize(20)
p factorialize(0)

#INPUT: Obtain a string
#STEP:
#covert string to all lowercase
#split string into seperate characters
#delete all non abc characters
#reverse string array
#then join it back into a single string
#compare original string to reversed string
#OUTPUT: Return true if string is spelled the same way forward and backward. Else return false

def palindrome(string)
 abc = ("a".."z").to_a
  lowercase_word = string.downcase.delete(" ")
  copy_word = lowercase_word.dup
  reverse_word = copy_word.split("").reverse.join("")
  lowercase_word == reverse_word ?  true : false
end

p palindrome("eye")
p palindrome("race car")
p palindrome("not a palindrome")
p palindrome("A man, a plan, a canal. Panama")
p palindrome("never odd or even")
p palindrome("nope")
p palindrome("almostomla")
p palindrome("My age is 0, 0 si ega ym.")
p palindrome("1 eye for of 1 eye.")
p palindrome("0_0 (: /-\ :) 0-0")

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

#INPUT: Obtain a sentence
#STEPS:
#convert the word into all lowercase
#create individual words out of the sentence
#for each word convert the first character into a capital letter
#OUTPUT: Return a sentence where each word in the sent is captailzied

def title_case(sentence)
  lowercase_word = sentence.downcase
  word_array = lowercase_word.split(" ")
  capitalize_word = word_array.map { |word| word.capitalize}.join(" ")
end

p title_case("I'm a little tea pot")
p title_case("sHoRt AnD sToUt")
p title_case("HERE IS MY HANDLE HERE IS MY SPOUT")

#INPUT: Obtain an array
#STEPS:
#Iterate through the array
#For each sub array find the max value in that array
#Store that value into a empty array
#OUTPUT: Return the max value of each sub array
def largest_of_four(array)
  max_values = []
    array.map { |sub_array| max_values.push(sub_array.max) }
    p max_values
end

largest_of_four([[13, 27, 18, 26], [4, 5, 1, 3], [32, 35, 37, 39], [1000, 1001, 857, 1]])
largest_of_four([[4, 9, 1, 3], [13, 35, 18, 26], [32, 35, 97, 39], [1000000, 1001, 857, 1]])

#INPUT: Obtain a string and a number
#STEPS:
#Print the string n amount of times
#OUTPUT: Return the string based on the number in the second parameter

def repeat(string, num)
  if num < 1
    p ""
  else
    p string * num
  end
end

repeat("*", 3)
repeat("abc", 3)
repeat("abc", 4)
repeat("abc", 1)
repeat("*", 8)
repeat("abc", -2)

#INPUT: Obtain an array and a number
#STEPS:
#Slice the array based on the number parameter
#OUTPUT: Return sliced array
def chunk(array, slice)
  sliced_array = []
  array.each_slice(slice) do |num|
    sliced_array.push(num)
  end
  p sliced_array
end

chunk(["a", "b", "c", "d"], 2)
chunk([0, 1, 2, 3, 4, 5], 3)
chunk([0, 1, 2, 3, 4, 5], 2)
chunk([0, 1, 2, 3, 4, 5], 4)

#INPUT: Obtain an array and a number
#STEPS:
#Delete n from the beginning of the array
#Slice the array based on the number parameter
#OUTPUT: Return sliced array
def slasher(array, how_many)
  p array.drop(how_many)
end

slasher([1, 2, 3], 2)
slasher([1, 2, 3], 0)
slasher([1, 2, 3], 9)
slasher([1, 2, 3], 4)

#INPUT:  Obtain an array
#STEPS:
#Split the array into two seperate arrays
#Sort the first array into abc order
# Sort the second array into abc order
#Check to see if the first array includes the same characters as the second
#OUTPUT: Return true if the the first word in the array contains the same characters as the second word

def mutation(array)
  p first_word = array[0].downcase.chars.sort.join(" ")
  p second_word = array[1].downcase.chars.sort.join(" ")
  p first_word.include?(second_word) ? true: false
end
mutation(["hello", "hey"])
mutation(["hello", "Hello"])
mutation(["zyxwvutsrqponmlkjihgfedcba", "qrstu"])
mutation(["Mary", "Army"])
mutation(["Mary", "Aarmy"])
mutation(["Alien", "line"])
mutation(["floor", "for"])
mutation(["hello", "neo"])

#INPUT:  Obtain an array of values
#STEPS:
#Iterate through each array
#If value eql false delete it from array
#Check to see if the first array includes the same characters as the second
#OUTPUT: Return string with no falsey values.

def bouncer(array)
  remove_false_values = array.delete_if do |value|
    value.eql?(false)
  end
  p remove_false_values
end

bouncer([7, "ate", "", false, 9])
bouncer(["a", "b", "c"])
bouncer([false, nil, ""])