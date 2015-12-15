
#INPUT: Obtain a sentence
#STEPS:
#convert the word into all lowercase
#create individual words out of the sentence
#for each word convert the first character into a capital letter
#OUTPUT: Return a sentence where each word in the sent is captailzied

def title_case(sentence)
  lowercase_word = sentence.downcase
  word_array = lowercase_word.split(" ")
  capitalize_word = word_array.map { |word| word.capitalize}.join(" ")
end

p title_case("I'm a little tea pot")
p title_case("sHoRt AnD sToUt")
p title_case("HERE IS MY HANDLE HERE IS MY SPOUT")