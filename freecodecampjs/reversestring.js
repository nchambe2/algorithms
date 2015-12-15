function reverseString(str) {
  var reversedString = str.split("").reverse().join("");
  return reversedString;
}

reverseString("hello");