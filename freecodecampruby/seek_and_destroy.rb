# Pseudocode
=begin
INPUT: Obtain an array and duplicate_values
Create a empty array called dup_values
Iterate through the array object
Iterate through the duplicate_values object
IF value from array == value from duplicate_values THEN
  delete value from array
  return array with remaining unique values
END IF


OUTPUT: Return an array with all unique values

=end

#Initial Solution
#def destroyer(array, *duplicate_values)
#  array.each do |item|
#      if duplicate_values.include?(item)
#          array.delete(item)
#      end
#  end
#end

def destroyer(array, *duplicate_values)
  array.reject! { |item| duplicate_values.include?(item) }
end

p destroyer([1, 2, 3, 1, 2, 3], 2, 3)
p destroyer([1, 2, 3, 5, 1, 2, 3], 2, 3)
p destroyer([3, 5, 1, 2, 2], 2, 3, 5)
p destroyer([2, 3, 2, 3], 2, 3)
p destroyer(["tree", "hamburger", 53], "tree", 53)
