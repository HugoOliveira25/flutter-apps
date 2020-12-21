extension Lista on List<double> {
  double sum() {
    double total = 0;
    this.forEach((element) {
      total += element;
    });
    return total;
  }
}
