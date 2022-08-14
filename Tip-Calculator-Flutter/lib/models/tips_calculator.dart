class TipsCalculator {

  final int bill;
  final int tip;
  final int numPeople;

  TipsCalculator(this.bill, this.tip, this.numPeople);

  double get tipAmount {
    return bill * tip / numPeople;
  }

  double get total {
    return (bill / numPeople) + tipAmount;
  }

}