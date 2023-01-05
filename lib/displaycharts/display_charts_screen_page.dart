import 'package:airqualityapp/base/empty_widget.dart';
import 'package:airqualityapp/base/logger_utils.dart';
import 'package:airqualityapp/dependencyinjection/injection.dart';
import 'package:airqualityapp/displaycharts/graph_point.dart';
import 'package:airqualityapp/loading/loading_widget.dart';
import 'package:airqualityapp/providers/providers.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DisplayChartsScreenPage extends HookConsumerWidget{

  final _TAG = "DisplayChartsScreen";
  final _logger = locator<LoggerUtils>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    useEffect((){
      _logger.log(_TAG, "Inside use effect");
      SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft,DeviceOrientation.landscapeRight]);
    }, const []);

    final polutionAnalyzerState = ref.watch(pollutionAnalyzerProvider);

    return polutionAnalyzerState.when(
        displayGraph: (List<GraphPoint> points){
          _logger.log(_TAG, "Will display chart now");

          return Scaffold(
            body: Center(
              child: AspectRatio(
                aspectRatio: 2,
                child: LineChart(
                  LineChartData(
                    lineBarsData: [
                      LineChartBarData(
                        spots: points.map((point) => FlSpot(point.x, point.y)).toList(),
                        isCurved: false,
                        // dotData: FlDotData(
                        //   show: false,
                        // ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
        loading: (){
          return LoadingWidget();
        },
    );

  }

}