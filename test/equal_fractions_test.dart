import 'package:fraction/fraction.dart';
import 'package:test/test.dart';

void main() {
  test('same numerator & denominator', () {
    expect(Fraction(2, 3), equals(Fraction(2, 3)));
  });
}
