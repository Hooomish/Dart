//4-5
class Convertion {

  static const Map<String, int> _numbers = {
    'zero': 0,
    'one': 1,
    'two': 2,
    'three': 3,
    'four': 4,
    'five': 5,
    'six': 6,
    'seven': 7,
    'eight': 8,
    'nine': 9
  };

  static Map<String, int> convertListToMapAndCountWords(List<String> words) {
    var map = <String, int> {};

    for (var word in words) {
      var counter = words.where((element) => element == word).length;
      
      map[word] = counter;
    }

    return map;
  }

  static Set<int> convertListOfWordsToNumbers(List<String> words) {
    var setOfNumbers = <int>{};

    for(var word in words){
      if (_numbers.containsKey(word)){
        setOfNumbers.add(_numbers[word]!);
      }
    }

    return setOfNumbers;
  }
}
