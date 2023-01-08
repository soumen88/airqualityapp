// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CountryList _$$_CountryListFromJson(Map<String, dynamic> json) =>
    _$_CountryList(
      status: json['status'] as String?,
      countryData: (json['data'] as List<dynamic>?)
          ?.map((e) => CountryData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CountryListToJson(_$_CountryList instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.countryData?.map((e) => e.toJson()).toList(),
    };
