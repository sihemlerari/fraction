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
}
