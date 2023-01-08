import 'package:airqualityapp/base/empty_widget.dart';
import 'package:airqualityapp/displaycharts/graph_point.dart';
import 'package:airqualityapp/forecast/city_details_widget.dart';
import 'package:airqualityapp/forecast/forecast_floating_action_widget.dart';
import 'package:airqualityapp/forecast/forecast_list_item.dart';
import 'package:airqualityapp/forecast/model/forecast_list_model.dart';
import 'package:airqualityapp/forecast/model/forecast_main_model.dart';
import 'package:airqualityapp/loading/loading_widget.dart';
import 'package:airqualityapp/providers/providers.dart';
import 'package:airqualityapp/routes/app_router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ForecastScreenPage extends HookConsumerWidget{

  SideTitles get _bottomTitles => SideTitles(
    showTitles: true,
    getTitlesWidget: (value, meta) {
      String text = '';
      switch (value.toInt()) {
        case 0:
          text = '1';
          break;
        case 2:
          text = '3';
          break;
        case 4:
          text = '5';
          break;
        case 6:
          text = '7';
          break;
        case 8:
          text = '9';
          break;
        case 10:
          text = '11';
          break;
        case 12:
          text = '13';
          break;
        case 14:
          text = '15';
          break;
      }

      return Text(text);
    },
  );

  List<BarChartGroupData> _chartGroups(List<GraphPoint> points) {
    return points.map((point) =>
        BarChartGroupData(
            x: point.x.toInt(),
            barRods: [
              BarChartRodData(
                  toY: point.y
              )
            ]
        )

    ).toList();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    useEffect((){
      SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp,DeviceOrientation.portraitDown]);
    }, const []);


    final forecastProviderState = ref.watch(forecastDataProvider);
    final forecastNotifier = ref.watch(forecastDataProvider.notifier);

    return forecastProviderState.when(
        displayGraph: (List<GraphPoint> points, ForecastMainModel forecastModel){
          return Scaffold(
            appBar: AppBar(
              title: Text("Weather Forecast"),
            ),
            body: Column(
              children: [
                (forecastModel.city != null) ?
                CityDetailsWidget(cityModel: forecastModel.city!) : EmptyWidget(),
                Text("Chart indicating temperature variation"),
                AspectRatio(
                  aspectRatio: 2,
                  child: BarChart(
                    BarChartData(
                      barGroups: _chartGroups(points),
                      borderData: FlBorderData(
                          border: const Border(bottom: BorderSide(), left: BorderSide())),
                      gridData: FlGridData(show: false),
                      titlesData: FlTitlesData(
                        bottomTitles: AxisTitles(sideTitles: _bottomTitles),
                        leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                        topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                        rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                      ),
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: ListView.builder(
                      itemCount: forecastModel.forecastList!.length,
                      itemBuilder: (BuildContext context, int index){
                        ForecastListModel currentForecastList = forecastModel.forecastList![index];
                        return ForecastListItem(forecastListModel: currentForecastList);
                      }
                  ),
                )
              ],
            ),
            floatingActionButton: ForecastFloatingActionWidget(
              onFloatingButtonPress: (){
                context.router.navigate(const DisplayChartsScreenRoute());
              },
            ),
          );
        },
        loading: (){
          return LoadingWidget();
        },
        error: (){
          return Center(
            child: Text("Unable to get your location"),
          );
        }
    );

  }

}