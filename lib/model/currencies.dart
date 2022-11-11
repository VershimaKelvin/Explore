import 'package:untitled4/model/mru.dart';

class Currencies {
  MRU? mRU;

  Currencies({this.mRU});

  Currencies.fromJson(Map<String, dynamic> json) {
    mRU = json['MRU'] != null ? MRU.fromJson(json['MRU']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (mRU != null) {
      data['MRU'] = mRU!.toJson();
    }
    return data;
  }
}