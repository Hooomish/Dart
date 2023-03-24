//2
class IntegerConversions {

  static List<int> convertFromDecimalToBinary(int number) {
    var temp = 0;
    List<int> reverseBinaryNumber = [];

    while(number > 0) {
      temp = number % 2;
      number = number ~/ 2;

      reverseBinaryNumber.add(temp);
    }

    return _reverseNumber(reverseBinaryNumber);
  }

  static int convertFromBinaryToDecimal(List<int> binaryNumber) {
    var reverseBinaryNumber = _reverseNumber(binaryNumber);
    var decimalNumber = 0;

    for(var i = reverseBinaryNumber.length - 1; i >= 0; i--) {
      if(reverseBinaryNumber[i] != 0) {
        var twoInDegree = 1;

        for(var j = 0; j < i; j++) {
          twoInDegree *= 2; 
        }

        decimalNumber += twoInDegree;
      }
    }

    return decimalNumber;
  }

  static List<int> _reverseNumber(List<int> number) {
    List<int> newNumber = List.from(number.reversed);

    return newNumber;
  }
}
