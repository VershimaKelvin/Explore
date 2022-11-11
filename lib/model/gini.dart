class Gini {
  double? d2014;

  Gini({this.d2014});

  Gini.fromJson(Map<String, dynamic> json) {
    d2014 = json['2014'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['2014'] = d2014;
    return data;
  }
}