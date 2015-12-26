#pseudocode
=begin
Return the sum of all odd Fibonacci numbers up to and including the passed number if it is a Fibonacci number.

The first few numbers of the Fibonacci sequence are 1, 1, 2, 3, 5 and 8, and each subsequent number is the sum of the previous two numbers.
INPUT: Obtain a number
CREATE a variable called sum = 0
CREATE a variable called previous_num = 0
CREATE a variable called current_num = 0
CREATE a iterator called i = 0
WHILE i <= num THEN
    IF current_num is even THEN
      sum = sum + current_number
    END IF
    CREATE variable called temp which stores the previous_num value
    current_num = current_num + previous_num
    previous_num = temp
END WHILE

print out sum
OUTPUT: Return the sum of all odd Fibonacci numbers
=end
def sum_fibs(number)
  sum, previous_num, current_num = 0, 1, 0

  while current_num <= number
      sum += current_num if current_num.odd?
      current_num, previous_num = previous_num, (current_num + previous_num)
  end

  sum
end

p sum_fibs(1000) #should return 1785.
p sum_fibs(4000000) #should return 4613732.
p sum_fibs(4) #should return 5.
p sum_fibs(75024) #should return 60696.
p sum_fibs(75025) #should return 135721.

