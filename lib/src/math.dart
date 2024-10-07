class Math {
  static int greatestCommonDivisor(int a, int b) {
    while (b != 0) {
      int t = b;
      b = a % t;
      a = t;
    }
    return a.abs();
  }
}
