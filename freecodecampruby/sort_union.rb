#Pseudocode
=begin
INPUT: Obtain several arrays
STEPS:
unique_values []
Store array 1 in unique_values
Iterater through arr2
IF the count for that number <= 1 THEN
    push that number into unique_values
END IF
Iterater through arr3
IF the count for that number <= 1 THEN
    push that number into unique_values
END IF

OUTPUT: Return all unique values in a single array unsorted
=end
def unite(arr1, arr2, *arr3)
 unique_values = arr1

 arr2.select do |number|
     next if (unique_values.include?(number))
     unique_values << number
 end

 arr3.select do |number|
  number.select do |value|
    next if (unique_values.include?(value))
     unique_values << value
  end
 end
  unique_values
end

def unite(arr1, arr2, *arr3)
    unique_values = []
    unique_values.concat(arr1).concat(arr2).concat(arr3.flatten(1))
    unique_values.uniq
end


p unite([1, 3, 2], [5, 2, 1, 4], [2, 1])
p unite([1, 3, 2], [5, 2, 1, 4], [2, 1]) #should return [1, 3, 2, 5, 4].
p unite([1, 3, 2], [1, [5]], [2, [4]]) #should return [1, 3, 2, [5], [4]].
p unite([1, 2, 3], [5, 2, 1]) #should return [1, 2, 3, 5].
p unite([1, 2, 3], [5, 2, 1, 4], [2, 1], [6, 7, 8]) #should return [1, 2, 3, 5, 4, 6, 7, 8].

