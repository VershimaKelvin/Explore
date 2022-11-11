import 'package:untitled4/model/ara.dart';

class NativeName {
  Ara? ara;

  NativeName({this.ara});

  NativeName.fromJson(Map<String, dynamic> json) {
    ara = json['ara'] != null ? Ara.fromJson(json['ara']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (ara != null) {
      data['ara'] = ara!.toJson();
    }
    return data;
  }
}