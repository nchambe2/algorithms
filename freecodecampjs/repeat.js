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