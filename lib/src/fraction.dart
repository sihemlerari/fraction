class Fraction {
  final int numerator;
  final int denominator;

  Fraction._(this.numerator, this.denominator);

  factory Fraction(int numerator, [int denominator = 1]) {
    final int gcd = 1;
    return Fraction._(numerator ~/ gcd, denominator ~/ gcd);
  }

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
