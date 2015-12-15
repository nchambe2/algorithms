=begin
Sort the array from smallest number to largest number
store the smallest number in a variable called minimum number
store the largest number in a variable called maximum number
create a empty array

FOR each number between the minimum number and the largest number THEN
      push the number into an array
END FOR

add each number in the range_array and return that number

Remember to use Read-Search-Ask if you get stuck. Try to pair program. Write your own code.


=end

#Initial Solution
#def sum_all(array)
#  sorted_array = array.sort
#  min_value = sorted_array.first
#  max_value = sorted_array.last
#  range_array = []
#
#
#  for num in min_value..max_value
#    range_array << num
#  end
#
#  return range_array.inject(:+)
#end

#Refactored Solution
def sum_all(array)
  min_value = array.min
  max_value = array.max
  range_array = []

  for num in min_value..max_value
    range_array << num
  end

   return range_array.inject(:+)
end


p sum_all([4, 1])
p sum_all([1, 4])
p sum_all([5, 10])
p sum_all([10, 5])
