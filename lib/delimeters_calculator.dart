//1
class DelimetersCalculator {

  static int nod(int a, int b) {
    try {
      if(a <= 0 || b <= 0) {
        throw("a or b <= 0");
      }

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
    catch(e) {
      print(e);

      return 0;
    }
  }

  static int nok(int a, int b) {
    try {
      if(a <= 0 || b <= 0) {
        throw("a or b <= 0");
      }

      return a*b~/nod(a, b);
    }
    catch(e) {
      print(e);

      return 0;
    }
  }

  static List<int>? numberToPrimeFactors(int a) {
    try {
      if(a <= 0) {
        throw("a <= 0");
      }

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
    catch(e) {
      print(e);

      return null;
    }
  }
}