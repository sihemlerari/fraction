import 'package:fraction/fraction.dart';
import 'package:test/test.dart';

void main() {
  test('same numerator & denominator', () {
    expect(Fraction(2, 3), equals(Fraction(2, 3)));
  });

  test('different numerators', () {
    expect(Fraction(1, 5), isNot(equals(Fraction(3, 5))));
  });

  test('different denominators', () {
    expect(Fraction(1, 3), isNot(equals(Fraction(1, 4))));
  });

  test('whole integer equals same fraction', () {
    expect(Fraction(9, 1), equals(Fraction(9)));
  });

  test('whole integer not equal to different whole integer', () {
    expect(Fraction(4), isNot(equals(Fraction(5))));
  });

  test('negative denominator', () {
    expect(Fraction(-1, -2), equals(Fraction(1, 2)));
    expect(Fraction(1, -2), equals(Fraction(-1, 2)));
  });
}
