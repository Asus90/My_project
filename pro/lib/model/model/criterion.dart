import 'package:json_annotation/json_annotation.dart';

part 'criterion.g.dart';

@JsonSerializable()
class Criterion {
  @JsonKey(name: 'type')
  String? type;
  @JsonKey(name: 'text')
  String? text;

  Criterion({this.type, this.text});

  factory Criterion.fromJson(Map<String, dynamic> json) {
    return _$CriterionFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CriterionToJson(this);
}
