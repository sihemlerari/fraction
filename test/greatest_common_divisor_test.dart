import 'package:test/test.dart';

void main() {
  test('greatest common divisor of 1/1 is 1', () {
    expect(gcd(1, 1), equals(1));
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
