// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'state_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StateList _$$_StateListFromJson(Map<String, dynamic> json) => _$_StateList(
      status: json['status'] as String?,
      stateDataList: (json['data'] as List<dynamic>?)
          ?.map((e) => StateData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_StateListToJson(_$_StateList instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.stateDataList?.map((e) => e.toJson()).toList(),
    };
