import 'package:test/test.dart';

void main() {
  test('reflexive', () {
    expect(greatestCommonDivisor(1, 1), equals(1));
    expect(greatestCommonDivisor(5, 5), equals(5));
  });

  test('relatively prime', () {
    expect(greatestCommonDivisor(1, 3), equals(1));
    expect(greatestCommonDivisor(7, 5), equals(1));
    expect(greatestCommonDivisor(-2, -3), equals(1));
  });

  test('one is multiple of the other', () {
    expect(greatestCommonDivisor(9, 3), equals(3));
    expect(greatestCommonDivisor(16, 4), equals(4));
  });

  test('common factor', () {
    expect(greatestCommonDivisor(6, 8), equals(2));
    expect(greatestCommonDivisor(18, 48), equals(6));
    expect(greatestCommonDivisor(24, 28), equals(4));
    expect(greatestCommonDivisor(-24, 28), equals(4));
    expect(greatestCommonDivisor(24, -28), equals(4));
    expect(greatestCommonDivisor(-24, -28), equals(4));
  });

  test('negatives', () {
    expect(greatestCommonDivisor(-2, -2), equals(2));
    expect(greatestCommonDivisor(-7, -7), equals(7));
  });
}

int greatestCommonDivisor(int a, int b) {
  while (b != 0) {
    int t = b;
    b = a % t;
    a = t;
  }
  return a.abs();
}
