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