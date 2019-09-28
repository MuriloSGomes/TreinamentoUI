// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RoomModel _$RoomModelFromJson(Map<String, dynamic> json) {
  return RoomModel(
    image: json['img'] as String,
    nomeImage: json['nomeImg'] as String,
    quantidadeDevices: json['qtdDevices'] as int,
  );
}

Map<String, dynamic> _$RoomModelToJson(RoomModel instance) => <String, dynamic>{
      'img': instance.image,
      'nomeImg': instance.nomeImage,
      'qtdDevices': instance.quantidadeDevices,
    };
