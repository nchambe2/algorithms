// Pseudocode
// Find the min value in the array
// Find the max value in the array

// FOR each number between the min value and the max value THEN
//     return each number between that value
// END FOR

// Sum each number between the range

function sumAll(arr) {
  var minValue = Math.min.apply(Math,arr);
  var maxValue = Math.max.apply(Math, arr);
  var rangeArray = [];
  var sumOfAllNums = 0;


  for(var i = 0; i <= maxValue; i++) {
      if (i >= minValue) {
          rangeArray.push(i);
      }
  }

for ( var i = 0; i < rangeArray.length; i++ ){
    sumOfAllNums += rangeArray[i];
}
    return sumOfAllNums;
}



sumAll([4, 1]);
sumAll([1, 4]);
sumAll([5, 10]);
sumAll([10, 5]);
