// INPUT: Obtain a array and a number
// STEPS:
// Create a empty container object called split array and set it eql to []
// Iterate through the array n amount of times
//    Push each number into the new array whose index is less than the size
// ELSE
//    return the original array
// OUTPUT: Return the string split into subarrays based on the number in the argument

// function chunk(arr, size) {
//     var splitArray = [];

//     for (var i = 0; i < arr.length ; i++) {
//             if (arr.index(arr[i]) < size) {
//               splitArray.push(arr[i]);
//             }
//     }

//     return splitArray;
// }

// console.log(chunk(["a", "b", "c", "d"], 2));
// console.log(chunk([0, 1, 2, 3, 4, 5], 3));
// console.log(chunk([0, 1, 2, 3, 4, 5], 2));
// console.log(chunk([0, 1, 2, 3, 4, 5], 4));