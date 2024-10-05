class Fraction {
  final int numerator;

  Fraction(this.numerator);

  Fraction plus(Fraction fraction) {
    if (fraction.intValue() == 0) return this;

    return Fraction(numerator + fraction.numerator);
  }

  int intValue() {
    return numerator;
  }
}
