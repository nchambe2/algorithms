#Pseudocode
=begin
INPUT: Obtain a string
STEPS:
Create a letter array containing [a-z]
Split the word into seperate characters
Store the first character into the first_letter variable
Store the last character into the last_letter variable
find the index of the first_letter in the letter_array
find the index of the last_letter in the letter_array
FOR letter in (first_letter..last_letter) THEN
  IF string_array.include?(letter) THEN
      next
  ELSEs
    return letter
END FOR
OUTPUT:  Return the missing letter in the sequence. If nothing missing return "Nothing missing"
Find the missing letter in the passed letter range and return it.

If all letters are present in the range, return undefined.
=end

def fear_not_letter(string)
  string_array = string.split("")
  first_letter = string_array[0]
  last_letter = string_array.last

  (first_letter..last_letter).find_all { |letter|  letter unless string_array.include?(letter)}

end

p fear_not_letter("abce") #should return "d".
p fear_not_letter("abcdefghjklmno") #should return "i".
p fear_not_letter("bcd") #should return undefined.
p fear_not_letter("yz") #should return undefined.
