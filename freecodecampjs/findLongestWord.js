// INPUT: Obtain a sentence
// STEPS:
// Split the sentence into individual words
// Store the results in the variable wordsArray
// Create a variable called maxWordLength and set that equal to 0
// FOR each word in the variable THEN
//     Find the length of each word
//     Compare the length of that word to current value in maxWordLength
// IFthe length is greater than maxWordLength THEN
//     set maxWordLength = to word length
// END IF
// END FOR
// OUTPUT: Return the length of the longest word in the sentence


function findLongestWord(str) {
  var wordArray = str.split(" ");
  var maxWordLength = 0;

  for (var i = 0; i < wordArray.length; i++)  {
        if (wordArray[i].length > maxWordLength)
          maxWordLength = wordArray[i].length;
  }

  console.log(maxWordLength);

};

findLongestWord("The quick brown fox jumped over the lazy dog");
findLongestWord("May the force be with you");
findLongestWord("Google do a barrel roll");
findLongestWord("What is the average airspeed velocity of an unladen swallow");
findLongestWord("What if we try a super-long word such as otorhinolaryngology");