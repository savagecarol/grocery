class HistoryModel {
  String date;
  String orderNumber;
  HistoryModel(this.date, this.orderNumber);
}


List<HistoryModel> gethistory() {
  List<HistoryModel> history = List<HistoryModel>();
  HistoryModel historymodel;
  for (int i = 0; i < 8; i++) {
    historymodel = new HistoryModel(
        '12th April 2020',
        '#12345678');
    history.add(historymodel);
  }
  return history;
}
