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