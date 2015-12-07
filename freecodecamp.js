function meetBonfire(argument) {
  // Good luck!
  console.log("you can read this function's argument in the developer tools", argument);

  return true;
}

meetBonfire("You can do this!");

function reverseString(str) {
  var splitString = str.split("");
  var reverseString = splitString.reverse();
  var joinedString = reverseString.join("");
  return joinedString;
}

reverseString("hello");

//INPUT: String
//Convert the string into lowercase
//Strip out all non abc characters
// store that word in a variable
//Then take the string place it in a array, reverse it , convert it back to a string
//Store this reversed string into reversed string variable
//Compare the forward and reverse string
//OUTPUT: return true if it's palindrome. False otherwise
// function palindrome(str) {
//     var lowerCaseString = str.toLowerCase();
//     var splitString = lowerCaseString.split(" ").join("");
//     var reversedString = lowerCaseString.split("").reverse();
//     var joinString = reversedString.join("");
//     console.log(forwardString);
//     console.log(joinString);

//     if (forwardString === joinString) {
//         console.log(true);
//     } else {
//         console.log(false);
//     };

// };

// palindrome("Eye");
// palindrome("race car");
// palindrome("nope");
// palindrome("A man, a plan, a canal. Panama");

// input string
// transform each word to lowercase
// if the letter is at char at 0
// then cap it
// else return full letter
// create a empty arry and push each letter into it
// output every word is CAP

// function titleCase(str) {
//   var titleCaseWord = [];
//   var lowerCase = str.toLowerCase().split(" ");
//   for (var i = 0; i <= lowerCase.length; i++) {
//      lowerCase[i].charAt(0).toUpperCase() + lowercase[i];
//        console.log(lowerCase);
//   }
// }

// titleCase("I'm a little tea pot");

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

// INPUT: Obtain a array with 4 sub arrays inside
// STEPS:
// Create a variable called maxSubArrayValues and set that equal to []
// Create a variable called maxValue and set it to 0
// FOR each sub array  THEN
//    loop through each value in each sub array
//     Compare the value to the value in the maxValue
// IF the value is greater than one in maxValue THEN
//     push that value into maxSubArrayValues
// END IF
// END FOR
// OUTPUT: Return an array with the max value of each sub array

function largestOfFour(array) {
    var maxSubArrayValues = [];
    var maxValue = 0;

    array.map(function(obj) {
       maxSubArrayValues.push(Math.max.apply(null, obj));
    });
    console.log(maxSubArrayValues);
}

largestOfFour([[13, 27, 18, 26], [4, 5, 1, 3], [32, 35, 37, 39], [1000, 1001, 857, 1]])
largestOfFour([[4, 9, 1, 3], [13, 35, 18, 26], [32, 35, 97, 39], [1000000, 1001, 857, 1]])

// INPUT: Obtain a string and a number
// STEPS:
// store original string into variable called wordToAddArray
// IF number is < 1THEN
//     return an empty string
// ELSE IF number === 1 THEN
//    return the original string
// ELSE
//    FOR (While counter is less than string) THEN
//        push string into wordToAddARRy
//    END FOR
// END IF
// OUTPUT: Return the string repeated n amount of times

function repeat(str, num ) {
  var strArray = str.split(" ");
  var joinArray;

    if (num < 1) {
      return " " ;
    } else if (num === 1) {
      return str;
    } else {
        for (var i = 0; i < (num - 1); i++) {
            strArray.push(str);
        }
    }
    return strArray.join("");
}

repeat("*", 3);
repeat("abc", 3);
repeat("abc", 4);
repeat("abc", 1);
repeat("*", 8);
repeat("abc", -2);

// INPUT: Obtain a array and a number
// STEPS:
// Create a empty container object called split array and set it eql to splitArray
// Iterate through the array n amount of times
//    Push each number into the new array
// ELSE
//    return the original array
// OUTPUT: Return the string split into subarrays based on the number in the argument

function chunk(arr, size) {
    var splitArray = [];

    for (var i = 0; i < arr.length ; i++) {
        if (i >= size)>
    }
}

console.log(chunk(["a", "b", "c", "d"], 2));
console.log(chunk([0, 1, 2, 3, 4, 5], 3));
console.log(chunk([0, 1, 2, 3, 4, 5], 2));
console.log(chunk([0, 1, 2, 3, 4, 5], 4));

function Dog(name, breed, weight) {
    this.name =  name;
    this.breed = breed;
    this.weight = weight;
}

var fido = new Dog("Fido", "Mixed", 38);
var fluffy = new Dog("Fluffy", "Poodle", 30);
var spot = new Dog("Spot", "Chihuahua", 10);
var dogs = [fido, fluffy, spot];

for (var i = 0; i < dogs.length; i++) {
  var size =
}

function Duck(type, canFly) {
    this.type = type;
    this.canFly = true;
}