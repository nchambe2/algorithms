#INPUT: Number
#STEPS:
#Create a variable called product
#Multiply num  * num - 1 and store that product in the variable product
#Subtract 1 from num again and multiply that by
#OUTPUT: Product of the range between num and 1
def factorialize(num)
  if num == 0
    1
  else
    (1..num).reduce(:*)
  end
end

p factorialize(5)
p factorialize(10)
p factorialize(20)
p factorialize(0)