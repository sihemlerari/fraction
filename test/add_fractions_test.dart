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

  test('different denominators without reducing', () {
    expect(Fraction(2, 3).plus(Fraction(1, 4)), equals(Fraction(11, 12)));
  });

  test('reduce result to whole number', () {
    expect(Fraction(1, 2).plus(Fraction(1, 2)), equals(Fraction(1)));
  });

  test('reduce result even when denominators are the same', () {
    expect(Fraction(3, 4).plus(Fraction(3, 4)), equals(Fraction(3, 2)));
  });

  test('one denominator is multiple of the other', () {
    expect(Fraction(2, 3).plus(Fraction(1, 6)), equals(Fraction(5, 6)));
  });

  test('common factor in denominators', () {
    expect(Fraction(1, 6).plus(Fraction(4, 9)), equals(Fraction(11, 18)));
  });

  test('negative fractions and reducing', () {
    expect(Fraction(-1, 4).plus(Fraction(3, 4)), equals(Fraction(1, 2)));
    expect(Fraction(-1, 2).plus(Fraction(3, 8)), equals(Fraction(-1, 8)));
  });

  test('negative signs everywhere', () {
    expect(Fraction(1, -4).plus(Fraction(-3, -4)), equals(Fraction(1, 2)));
  });
}
