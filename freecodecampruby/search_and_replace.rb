#Pseduocode
=begin
INPUT: Obtain a sentence, the word to be replaced, and the value to replace it with
STEPS:
CREATE a empty array called sentence_array.
STORE each value in the sentence into a array.
FOR each word in the array check to see if it is equal to the word to be replace THEN
    IF word == word to replace THEN
      IF word is capitalized? THEN
          uppercase the word
      END IF
      set that index equal to the value to replace it
    END IF
END FOR
OUTPUT: Return the sentence with the newly replaced word
=end

def my_replace(sentence, before, after)
 sentence_array = sentence.split(" ")
 sentence_array.select do |word|
   if word.eql?(before)
      after = after.capitalize if word == word.capitalize
      index = sentence_array.index(word)
      sentence_array[index] = after
   end
 end
 sentence_array.join(" ")
end

#def my_replace(sentence, before, after)
# if sentence[before] == sentence[before].capitalize
#    after = after.capitalize
# end
# sentence[before] = after
# sentence
#end



p my_replace("A quick brown fox jumped over the lazy dog", "jumped", "leaped");
p my_replace("Let us go to the store", "store", "mall")
p my_replace("He is Sleeping on the couch", "Sleeping", "sitting")
p my_replace("This has a spellngi error", "spellngi", "spelling")
p my_replace("His name is Tom", "Tom", "john")
p my_replace("Let us get back to more Coding", "Coding", "bonfires")
