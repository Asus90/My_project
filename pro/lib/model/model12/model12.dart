import 'package:json_annotation/json_annotation.dart';

import 'criterion.dart';

part 'model12.g.dart';

@JsonSerializable()
class Model12 {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'tag')
  String? tag;
  @JsonKey(name: 'color')
  String? color;
  @JsonKey(name: 'criteria')
  List<Criterion>? criteria;

  Model12({this.id, this.name, this.tag, this.color, this.criteria});

  factory Model12.fromJson(Map<String, dynamic> json) {
    return _$Model12FromJson(json);
  }

  Map<String, dynamic> toJson() => _$Model12ToJson(this);
}
