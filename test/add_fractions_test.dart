import 'package:fraction/fraction.dart';
import 'package:test/test.dart';

void main() {
  test('zero plus zero', () {
    expect(Fraction(0).plus(Fraction(0)).intValue(), 0);
  });

  test('non-zero plus zero', () {
    expect(Fraction(2).plus(Fraction(0)).intValue(), 2);
  });

  test('zero plus non-zero', () {
    expect(Fraction(0).plus(Fraction(5)).intValue(), 5);
  });

  test('non-zero non-negative integers', () {
    expect(Fraction(3).plus(Fraction(5)).intValue(), 8);
  });

  test('non-zero negative integers', () {
    expect(Fraction(-2).plus(Fraction(-3)).intValue(), -5);
  });

  test('same denominator of 1', () {
    final Fraction sum = Fraction(2, 1).plus(Fraction(3, 1));
    expect(sum.numerator, 5);
    expect(sum.denominator, 1);
  });

  test('same denominator but different than 1', () {
    final Fraction sum = Fraction(3, 7).plus(Fraction(5, 7));
    expect(sum.numerator, 8);
    expect(sum.denominator, 7);
  });
}
