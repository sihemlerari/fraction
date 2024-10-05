class Fraction {
  final int numerator;

  Fraction(this.numerator);

  Fraction plus(Fraction fraction) {
    if (fraction.intValue() == 0) return this;

    return fraction;
  }

  int intValue() {
    return numerator;
  }
}
