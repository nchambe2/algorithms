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