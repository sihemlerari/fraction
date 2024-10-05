import 'package:fraction/fraction.dart';
import 'package:test/test.dart';

void main() {
  test('zero plus zero', () {
    Fraction sum = Fraction(0).plus(Fraction(0));
    expect(sum.intValue(), 0);
  });

  test('non-zero plus zero', () {
    Fraction sum = Fraction(2).plus(Fraction(0));
    expect(sum.intValue(), 2);
  });

  test('zero plus non-zero', () {
    Fraction sum = Fraction(0).plus(Fraction(5));
    expect(sum.intValue(), 5);
  });
}
