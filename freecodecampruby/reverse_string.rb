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