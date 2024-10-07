import 'package:fraction/src/math.dart';

class Fraction {
  final int numerator;
  final int denominator;

  Fraction._(this.numerator, this.denominator);

  factory Fraction(int numerator, [int denominator = 1]) {
    if (denominator == 0) {
      throw ArgumentError('denominator can not be 0');
    }

    if (denominator < 0) {
      numerator = -numerator;
      denominator = -denominator;
    }

    final int gcd = Math.greatestCommonDivisor(numerator, denominator);
    return Fraction._(numerator ~/ gcd, denominator ~/ gcd);
  }

  Fraction plus(Fraction other) {
    return Fraction(
      numerator * other.denominator + other.numerator * denominator,
      denominator * other.denominator,
    );
  }

  Fraction operator +(Fraction other) => plus(other);

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
