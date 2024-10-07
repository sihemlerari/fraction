import 'package:fraction/fraction.dart';
import 'package:test/test.dart';

void main() {
  test('already reduced', () {
    expect(Fraction(2, 3), equals(Fraction(2, 3)));
  });

  test('reduce to not whole integer', () {
    expect(Fraction(6, 8), equals(Fraction(3, 4)));
  });

  test('reduce to whole integer', () {
    expect(Fraction(12, 6), equals(Fraction(2)));
  });

  test('reduce zero', () {
    expect(Fraction(0, 777), equals(Fraction(0)));
  });

  test('reduce negative fractions', () {
    expect(Fraction(-21, 49), equals(Fraction(-3, 7)));
    expect(Fraction(12, -16), equals(Fraction(-3, 4)));
    expect(Fraction(-15, -25), equals(Fraction(3, 5)));
  });
}
