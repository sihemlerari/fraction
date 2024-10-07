import 'package:fraction/src/math.dart';
import 'package:test/test.dart';

void main() {
  test('reflexive', () {
    expect(Math.greatestCommonDivisor(1, 1), equals(1));
    expect(Math.greatestCommonDivisor(5, 5), equals(5));
  });

  test('relatively prime', () {
    expect(Math.greatestCommonDivisor(1, 3), equals(1));
    expect(Math.greatestCommonDivisor(7, 5), equals(1));
    expect(Math.greatestCommonDivisor(-2, -3), equals(1));
  });

  test('one is multiple of the other', () {
    expect(Math.greatestCommonDivisor(9, 3), equals(3));
    expect(Math.greatestCommonDivisor(16, 4), equals(4));
  });

  test('common factor', () {
    expect(Math.greatestCommonDivisor(6, 8), equals(2));
    expect(Math.greatestCommonDivisor(18, 48), equals(6));
    expect(Math.greatestCommonDivisor(24, 28), equals(4));
    expect(Math.greatestCommonDivisor(-24, 28), equals(4));
    expect(Math.greatestCommonDivisor(24, -28), equals(4));
    expect(Math.greatestCommonDivisor(-24, -28), equals(4));
  });

  test('negatives', () {
    expect(Math.greatestCommonDivisor(-2, -2), equals(2));
    expect(Math.greatestCommonDivisor(-7, -7), equals(7));
  });
}
