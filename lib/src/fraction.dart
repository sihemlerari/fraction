class Fraction {
  final int numerator;

  Fraction(this.numerator);

  Fraction plus(Fraction fraction) {
    return Fraction(numerator + fraction.numerator);
  }

  int intValue() {
    return numerator;
  }
}
