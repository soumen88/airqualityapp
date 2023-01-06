import 'package:freezed_annotation/freezed_annotation.dart';

part 'state_data.freezed.dart';
part 'state_data.g.dart';


@freezed
class StateData with _$StateData{
  @JsonSerializable(explicitToJson: true)
  const factory StateData({
    @JsonKey(name: "state")
    required String? stateName,
  }) = _StateData;


  factory StateData.fromJson(Map<String, dynamic> json) => _$StateDataFromJson(json);

}