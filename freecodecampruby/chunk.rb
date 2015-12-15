#INPUT: Obtain an array and a number
#STEPS:
#Slice the array based on the number parameter
#OUTPUT: Return sliced array
def chunk(array, slice)
  sliced_array = []
  array.each_slice(slice) do |num|
    sliced_array.push(num)
  end
  p sliced_array
end

chunk(["a", "b", "c", "d"], 2)
chunk([0, 1, 2, 3, 4, 5], 3)
chunk([0, 1, 2, 3, 4, 5], 2)
chunk([0, 1, 2, 3, 4, 5], 4)