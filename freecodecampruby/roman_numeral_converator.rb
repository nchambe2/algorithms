#Pseduocode
=begin
INPUT: Obtain a number
STEPS:
Create  a hash called roman_symbols and store the numbers as keys and roman numerals as values
roman_symbols = {
  1 => "I",
  4 => "IV",
  5 => "V",
  9 => "IX",
  10 => "X",
  40 => "XL",
  50 => "L",
  90 => "XC",
  100 => "C",
  400 => "CD",
  500 => "D",
  900 => "CM",
  1000 => "M"
}

Create a roman numeral variable and set it equal to a empty string
iterate through roman_symbols hash
  WHILE num is >= to key THEN
    add the key's symbol to the roman_numeral variable
    subtract the key amount from num
  END WHILE
OUTPUT: Return the roman numeral version


=end

def convert(num)
  roman_numeral = ""

  roman_symbols = {
    1000 => "M",
    900 => "CM",
    500 => "D",
    400 => "CD",
    100 => "C",
    90 => "XC",
    50 => "L",
    40 => "XL",
    10 => "X",
    9 => "IX",
    5 => "V",
    4 => "IV",
    1 => "I"
  }

  roman_symbols.each do |number, symbol|
       while (num >= number)
            roman_numeral += symbol
            num -= number
        end
  end
  roman_numeral
end

p convert(36)
p convert(5) #should return "V".
p convert(9) #should return "IX".
p convert(12) #should return "XII".
p convert(16) #should return "XVI".
p convert(29) #should return "XXIX".
p convert(44) #should return "XLIV".
p convert(45) #should return "XLV"
p convert(68) #should return "LXVIII"
p convert(83) #should return "LXXXIII"
p convert(97) #should return "XCVII"
p convert(99) #should return "XCIX"
p convert(500) #should return "D"
p convert(501) #should return "DI"
p convert(649) #should return "DCXLIX"
p convert(798) #should return "DCCXCVIII"
p convert(891) #should return "DCCCXCI"
p convert(1000) #should return "M"
p convert(1004) #should return "MIV"
p convert(1006) #should return "MVI"
p convert(1023) #should return "MXXIII"
p convert(2014) #should return "MMXIV"
p convert(3999) #should return "MMMCMXCIX"
