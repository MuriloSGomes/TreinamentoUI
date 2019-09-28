import 'package:json_annotation/json_annotation.dart';

part 'room_model.g.dart';

@JsonSerializable()
class RoomModel {
  @JsonKey(name: "img")
  final String image;

  @JsonKey(name: "nomeImg")
  final String nomeImage;

  @JsonKey(name: "qtdDevices")
  final int quantidadeDevices;

  RoomModel({
    this.image,
    this.nomeImage,
    this.quantidadeDevices,
  });

  factory RoomModel.fromJson(Map<String, dynamic> json) =>
      _$RoomModelFromJson(json);

  Map<String, dynamic> toJson() => _$RoomModelToJson(this);
}
