import 'package:json_annotation/json_annotation.dart';

class SetFromListConverter implements JsonConverter<Set?, List?> {
  const SetFromListConverter();

  @override
  Set? fromJson(List? json) => json?.toSet();

  @override
  List? toJson(Set? object) => object?.toList(growable: false);
}
