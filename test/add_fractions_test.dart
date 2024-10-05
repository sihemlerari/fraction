import 'package:fraction/fraction.dart';
import 'package:test/test.dart';

void main() {
  test('zero plus zero', () {
    expect(Fraction(0).plus(Fraction(0)), equals(Fraction(0)));
  });

  test('non-zero plus zero', () {
    expect(Fraction(2).plus(Fraction(0)), equals(Fraction(2)));
  });

  test('zero plus non-zero', () {
    expect(Fraction(0).plus(Fraction(5)), equals(Fraction(5)));
  });

  test('non-zero non-negative integers', () {
    expect(Fraction(3).plus(Fraction(5)), equals(Fraction(8)));
  });

  test('non-zero negative integers', () {
    expect(Fraction(-2).plus(Fraction(-3)), equals(Fraction(-5)));
  });

  test('same denominator of 1', () {
    expect(Fraction(2, 1).plus(Fraction(3, 1)), equals(Fraction(5, 1)));
  });

  test('same denominator but different than 1', () {
    expect(Fraction(3, 7).plus(Fraction(5, 7)), equals(Fraction(8, 7)));
  });
}
