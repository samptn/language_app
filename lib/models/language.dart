import 'package:json_annotation/json_annotation.dart';
part 'language.g.dart';
//command for build runner

//flutter pub run build_runner build --delete-conflicting-outputs

@JsonSerializable(explicitToJson: true)
class Language {
  final String name;
  final int startIndex;
  final String startHex;
  final int size;
  final String script;

  Language({
    required this.name,
    required this.startIndex,
    required this.startHex,
    required this.size,
    required this.script,
  });
  factory Language.fromJson(Map<String, dynamic> json) =>
      _$LanguageFromJson(json);
  Map<String, dynamic> toJson() => _$LanguageToJson(this);
}
