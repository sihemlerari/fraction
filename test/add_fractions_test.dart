import 'package:fraction/fraction.dart';
import 'package:test/test.dart';

void main() {
  test('zero plus zero', () {
    Fraction sum = Fraction(0).plus(Fraction(0));
    expect(sum.intValue(), 0);
  });
}
