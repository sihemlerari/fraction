class Fraction {
  final int numerator;
  final int denominator;

  Fraction(this.numerator, [this.denominator = 1]);

  Fraction plus(Fraction fraction) {
    return Fraction(numerator + fraction.numerator, denominator);
  }

  int intValue() {
    return numerator;
  }

  @override
  bool operator ==(covariant Fraction other) {
    if (identical(this, other)) return true;

    return other.numerator == numerator && other.denominator == denominator;
  }

  @override
  String toString() => '$numerator/$denominator';
}
