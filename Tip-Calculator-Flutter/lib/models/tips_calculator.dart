class TipsCalculator {
  final double bill;
  final int tip;
  final int numPeople;

  TipsCalculator(this.bill, this.tip, this.numPeople);

  double get tipAmount {
    if (bill == 0 || numPeople == 0) return 0;
    return bill * (tip / 100) / numPeople;
  }

  double get total {
    if (bill == 0 || numPeople == 0) return 0;
    return (bill / numPeople) + tipAmount;
  }
}
