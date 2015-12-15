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