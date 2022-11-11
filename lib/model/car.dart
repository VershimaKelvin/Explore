class Car {
  List<String>? signs;
  String? side;

  Car({this.signs, this.side});

  Car.fromJson(Map<String, dynamic> json) {
    signs = json['signs'].cast<String>();
    side = json['side'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['signs'] = signs;
    data['side'] = side;
    return data;
  }
}