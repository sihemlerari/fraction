import 'package:test/test.dart';

void main() {
  test('reflexive', () {
    expect(gcd(1, 1), equals(1));
    expect(gcd(5, 5), equals(5));
  });

  test('relatively prime', () {
    expect(gcd(1, 3), equals(1));
    expect(gcd(7, 5), equals(1));
    expect(gcd(-2, -3), equals(1));
  });

  test('one is multiple of the other', () {
    expect(gcd(9, 3), equals(3));
    expect(gcd(16, 4), equals(4));
  });

  test('common factor', () {
    expect(gcd(6, 8), equals(2));
    expect(gcd(18, 48), equals(6));
    expect(gcd(24, 28), equals(4));
    expect(gcd(-24, 28), equals(4));
    expect(gcd(24, -28), equals(4));
    expect(gcd(-24, -28), equals(4));
  });

  test('negatives', () {
    expect(gcd(-2, -2), equals(-2));
    expect(gcd(-7, -7), equals(-7));
  });
}

int gcd(int a, int b) {
  while (b != 0) {
    int t = b;
    b = a % t;
    a = t;
  }
  return a;
}
