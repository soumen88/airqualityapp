import 'package:freezed_annotation/freezed_annotation.dart';

import '../graph_point.dart';

part 'pollution_analyzer_events.freezed.dart';

@freezed
class PollutionAnalyzerEvents with _$PollutionAnalyzerEvents {
  const factory PollutionAnalyzerEvents.displayGraph(List<GraphPoint> points) = _DisplayGraph;
  const factory PollutionAnalyzerEvents.loading() = _Loading;
}