//2
class IntegerConversions {

  static String convertFromDecimalToBinary(int number) {
    var temp = 0;
    String reverseBinaryNumber = '';

    if (number < 0) {
      reverseBinaryNumber = '-';
      number *= -1;
    }

    while(number > 0) {
      temp = number % 2;
      number = number ~/ 2;

      reverseBinaryNumber += temp.toString();
    }

    return _reverseNumber(reverseBinaryNumber);
  }

  static int? convertFromBinaryToDecimal(String binaryNumber) {
    try {
    var reverseBinaryNumber = _reverseNumber(binaryNumber);
    var decimalNumber = 0;
    var isNatural = true;

    if(reverseBinaryNumber[0] == '-') {      
      isNatural = false;
      reverseBinaryNumber = reverseBinaryNumber.replaceAll("-", "");
    }

    for(var i = reverseBinaryNumber.length - 1; i >= 0; i--) {
      if(int.parse(reverseBinaryNumber[i]) != 0 && int.tryParse(reverseBinaryNumber[i]) != null) {
        var twoInDegree = 1;

        for(var j = 0; j < i; j++) {
          twoInDegree *= 2; 
        }

        decimalNumber += twoInDegree;
      }
    }

    return isNatural ? decimalNumber : decimalNumber *-1;
    }
    catch(e) {
      print(e);
      return null;
    }
  }

  static String _reverseNumber(String number) {
    String newNumber = '';

    if(number[0] == '-') {      
      newNumber += number[0];
      number = number.replaceAll("-", "");
    }

    for(var i = number.length-1; i >= 0; i--) {
      newNumber += number[i];
    }

    return newNumber;
  }
}
