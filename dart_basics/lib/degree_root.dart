//7
extension DegreeRoot on num {
  
  double? printDegreeRoot( int rootDegree) {
    try {
      if (rootDegree % 2 == 0 && this < 0) {
        throw('Value < 0');
      }

      double eps = 0.00001;             //допустимая погрешность
      double root = this / rootDegree;   //начальное приближение корня
      num rn = this;                  //число итераций
      
      while(_mabs(root - rn) >= eps){
        rn = this;

        for(int i = 1; i < rootDegree; i++){
            rn = rn / root;
        }

        root = 0.5 * ( rn + root);
    }

    return root;   
    }
    catch (e) {
      print('Error: $e');

      return null;
    }
  }

  num _mabs(num x){ return (x < 0)? -x : x; }
}
