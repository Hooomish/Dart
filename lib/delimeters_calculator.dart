//1
class DelimetersCalculator {

  static int nod(int a, int b) {
    if (a % b == 0) {
      return b;
    }
    if (b % a == 0) {
      return a;
    }
    if (a > b) {
      return nod(a-b, b);
    }

    return nod(b-a, a);
  }

  static int nok(int a, int b) {
    return a*b~/nod(a, b);
  }

  static List<int> numberToPrimeFactors(int a) {
    var numbers = [1];
    var div = 2;
    
    while (a > 1) {
      while (a % div == 0) {
        numbers.add(div);
        a = a ~/ div;
      }
      div++;
    }

    return numbers;
  }
}