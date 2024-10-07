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
}
