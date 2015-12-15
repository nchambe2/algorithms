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