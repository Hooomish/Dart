//3
class WorkingWithString{

  static List<num> getListOfNumberFromString(String str) {
    List<String> listOfString = str.split(" ");
    List<num> listOfNumber = [];

    for(var i = 0; i < listOfString.length; i++){     
      var value = num.tryParse(listOfString[i]);

      if (value is num){
        listOfNumber.add(value);
      }
    }

    return listOfNumber;
  }
}
