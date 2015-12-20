=begin
INPUT: 2 arrays
STEPS:
Create a variable called same_values and store a empty array

iterate through the first array
IF value is included in the second array THEN
    skip that value
    IF value is not included in the second array THEN
        push value to same_values array
    END IF
END IF

iterate through the second array
IF value is included in the first array THEN
    skip that value
    IF value is not included in the first array THEN
        push value to same_values array
    END IF
END IF
return same_values_array

OUTPUT: Return a new array with items that are found in both array_1 and array_2
=end

def diff(array_1, array_2)
  unique_value = [];

  array_1.map do |value|
      next if array_2.include? value
          unique_value << value
  end

  array_2.map do |value|
      next if array_1.include? value
          unique_value << value
  end

  return unique_value
end

p diff([1, 2, 3, 5], [1, 2, 3, 4, 5])
p diff(["diorite", "andesite", "grass", "dirt", "pink wool", "dead shrub"], ["diorite", "andesite", "grass", "dirt", "dead shrub"])
p diff(["andesite", "grass", "dirt", "pink wool", "dead shrub"], ["diorite", "andesite", "grass", "dirt", "dead shrub"])
p diff(["andesite", "grass", "dirt", "dead shrub"], ["andesite", "grass", "dirt", "dead shrub"])
p diff([1, 2, 3, 5], [1, 2, 3, 4, 5])
p diff([1, "calf", 3, "piglet"], [1, "calf", 3, 4])
p diff([], ["snuffleupagus", "cookie monster", "elmo"])
p diff([1, "calf", 3, "piglet"], [7, "filly"])
