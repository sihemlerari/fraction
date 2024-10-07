import 'package:fraction/fraction.dart';

void main() {
  final Fraction sum1 = Fraction(1, 6).plus(Fraction(4, 9));
  final Fraction sum2 = Fraction(2, 3) + Fraction(5, 7);
  print(sum1);
  print(sum2);
  print(sum1 == sum2);
}
