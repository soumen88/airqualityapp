import 'package:airqualityapp/choosecountry/models/country_data.dart';
import 'package:airqualityapp/choosestate/models/state_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'state_list.freezed.dart';
part 'state_list.g.dart';


@freezed
class StateList with _$StateList{
  @JsonSerializable(explicitToJson: true)
  const factory StateList({
    required String? status,
    @JsonKey(name: "data")
    required List<StateData>? stateDataList,
  }) = _StateList;


  factory StateList.fromJson(Map<String, dynamic> json) => _$StateListFromJson(json);

}