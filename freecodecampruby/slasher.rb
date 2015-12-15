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