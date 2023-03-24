import 'package:dart_application/delimeters_calculator.dart';
import 'package:dart_application/convertion.dart';
import 'package:dart_application/degree_root.dart';
import 'package:dart_application/integer_conversions.dart';
import 'package:dart_application/point.dart';
import 'package:dart_application/user_logic.dart';
import 'package:dart_application/working_with_string.dart';

void main() {
  //1
  var numberA = 63, numberB = 28;
  
  var nod = DelimetersCalculator.nod(numberA, numberB);
  var nok = DelimetersCalculator.nok(numberA, numberB);
  var numbersToPrimeFactors = DelimetersCalculator.numberToPrimeFactors(numberA);

  print('№1');
  print('NOD[$numberA, $numberB] = $nod');
  print('NOK[$numberA, $numberB] = $nok');
  print('Numbers to prime factors[$numberA] = $numbersToPrimeFactors \n');
  
  //2

  numberA = 117; 
  var binaryNumber = IntegerConversions.convertFromDecimalToBinary(numberA);
  var binaryNumberToDecimal = IntegerConversions.convertFromBinaryToDecimal(binaryNumber);
  
  print('№2');
  print('Number = $numberA');
  print('Binary number = $binaryNumber');
  print('Binary number to decimal = $binaryNumberToDecimal \n');

  //3

  var str = 'qwe22 eedfe 334/../.f 4';
  var listOfInteger = WorkingWithString.getListOfNumberFromString(str);

  print('№3');
  print('String = $str');
  print('Numbers = $listOfInteger \n');

  //4

  var listOfWords = ['Nastya', 'Vlad', 'Julia', 'Nastya', 'Nastya', 'Vlad'];
  var mapOfCountWords = Convertion.convertListToMapAndCountWords(listOfWords);

  print('№4');
  print('Words = $listOfWords');
  print('Map = $mapOfCountWords \n');

  //5
  listOfWords = ['one', 'two', 'three', 'cat', 'dog', 'zero', 'two', 'nine', 'one'];
  var setOfNumbers = Convertion.convertListOfWordsToNumbers(listOfWords);

  print('№5');
  print('Words = $listOfWords');
  print('Numbers = $setOfNumbers \n');

  //6
  var pointFirst = Point(1, 2, 3);
  var pointSecond = Point(3, 3, 3);
  var pointThird = Point.coordinatesAtOne();
  var pointFourth = Point(3, 3, 3);

  var distance = pointFirst.distanceTo(pointSecond);

  
  print('№6');
  print('Distance between coordinates: $distance \n');
  
  //7

  num value = -125, goodValue = 49;
  var root = 2;

  print('№7');
  var firstRoot = value.printDegreeRoot(root);
  var secondRoot = goodValue.printDegreeRoot(root);
  
  print('Value = $value, root = $root = $firstRoot');
  print('Value = $goodValue, root = $root = $secondRoot \n');

  //8

  var userOne = AdminUser('qwerty@qwert.com');
  var userTwo = GeneralUser('qwerty@qwert.com');
  var userThree = GeneralUser('qwerty@qwert.com');
  var userFour = AdminUser('qwerty@qwert.com');

  var userManager = UserManager();
  userManager.addUser(userOne);
  userManager.addUser(userTwo);
  userManager.addUser(userThree);
  userManager.addUser(userFour);

  print('№8');
  userManager.printUsers();
  

  // var bob = User('Bob', 40, true, ['Footbal', 'Skate'])
  //   ..age = 40;
  
  // bob.info();

  // var alex = User('Alex', 25, false, ['Basketbol']);
  // alex.info();
}
