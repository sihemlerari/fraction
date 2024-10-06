class Fraction {
  final int numerator;
  final int denominator;

  Fraction(this.numerator, [this.denominator = 1]);

  Fraction plus(Fraction fraction) {
    if (fraction.denominator == denominator) {
      return Fraction(numerator + fraction.numerator, denominator);
    }
    return Fraction(numerator * fraction.denominator + fraction.numerator * denominator,
        denominator * fraction.denominator);
  }

  @override
  bool operator ==(covariant Fraction other) {
    if (identical(this, other)) return true;

    return other.numerator == numerator && other.denominator == denominator;
  }

  @override
  int get hashCode => numerator.hashCode ^ denominator.hashCode;

  @override
  String toString() => '$numerator/$denominator';
}
