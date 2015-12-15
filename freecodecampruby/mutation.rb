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