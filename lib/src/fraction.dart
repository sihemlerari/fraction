class Fraction {
  final int numerator;
  final int denominator;

  Fraction(this.numerator, [this.denominator = 1]);

  Fraction plus(Fraction fraction) {
    return Fraction(numerator + fraction.numerator, 1);
  }

  int intValue() {
    return numerator;
  }
}
