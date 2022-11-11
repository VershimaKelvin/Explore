class MRU {
  String? name;
  String? symbol;

  MRU({this.name, this.symbol});

  MRU.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    symbol = json['symbol'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['name'] = name;
    data['symbol'] = symbol;
    return data;
  }
}