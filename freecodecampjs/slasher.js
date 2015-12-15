// INPUT: Obtain an array and a number
// STEPS:
// Start from the beginning of the array and remove n amount from the beg. of the array
// Return slashed array
// OUTPUT: Returns the array with the n amount removed from the beg. of the array

function slasher(arr, howMany) {
    for(var i = 0; i < howMany; i++) {
          arr.shift();
    }
  return arr;
};

console.log(slasher([1, 2, 3], 2));
console.log(slasher([1, 2, 3], 0));
console.log(slasher([1, 2, 3], 9));
console.log(slasher([1, 2, 3], 4));
