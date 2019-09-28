import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'usuario_model.g.dart';

@JsonSerializable()
class UsuarioModel {
  @JsonKey(name: "nom")
  final String nome;

  UsuarioModel({
    @required this.nome,
  });

  factory UsuarioModel.fromJson(Map<String, dynamic> json) =>
      _$UsuarioModelFromJson(json);

  Map<String, dynamic> toJson() => _$UsuarioModelToJson(this);
}
