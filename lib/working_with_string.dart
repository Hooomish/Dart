//3
class WorkingWithString{

  static List<int> getListOfNumberFromString(String str) {
    List<int> listOfInteger = [];

    for(var i = 0; i < str.length; i++){     
      var value = int.tryParse(str[i]);

      if (value is int){
        listOfInteger.add(value);
      }
    }

    return listOfInteger;
  }
}
