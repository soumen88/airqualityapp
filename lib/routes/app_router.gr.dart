// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../choosecountry/choose_country_screen.dart' as _i2;
import '../choosestate/choose_state_screen_page.dart' as _i4;
import '../displaycharts/display_charts_screen_page.dart' as _i3;
import '../forecast/forecast_screen_page.dart' as _i5;
import '../splash/splash_screen.dart' as _i1;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    SplashScreenRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i1.SplashScreenPage(),
      );
    },
    ChooseCountryScreen.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i2.ChooseCountryScreen(),
      );
    },
    DisplayChartsScreenRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i3.DisplayChartsScreenPage(),
      );
    },
    ChooseStateScreenRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i4.ChooseStateScreenPage(),
      );
    },
    ForecastScreenRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i5.ForecastScreenPage(),
      );
    },
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/splash',
          fullMatch: true,
        ),
        _i6.RouteConfig(
          SplashScreenRoute.name,
          path: '/splash',
        ),
        _i6.RouteConfig(
          ChooseCountryScreen.name,
          path: '/chooseCountry',
        ),
        _i6.RouteConfig(
          DisplayChartsScreenRoute.name,
          path: '/displayCharts',
        ),
        _i6.RouteConfig(
          ChooseStateScreenRoute.name,
          path: '/chooseStates',
        ),
        _i6.RouteConfig(
          ForecastScreenRoute.name,
          path: '/displayForecast',
        ),
      ];
}

/// generated route for
/// [_i1.SplashScreenPage]
class SplashScreenRoute extends _i6.PageRouteInfo<void> {
  const SplashScreenRoute()
      : super(
          SplashScreenRoute.name,
          path: '/splash',
        );

  static const String name = 'SplashScreenRoute';
}

/// generated route for
/// [_i2.ChooseCountryScreen]
class ChooseCountryScreen extends _i6.PageRouteInfo<void> {
  const ChooseCountryScreen()
      : super(
          ChooseCountryScreen.name,
          path: '/chooseCountry',
        );

  static const String name = 'ChooseCountryScreen';
}

/// generated route for
/// [_i3.DisplayChartsScreenPage]
class DisplayChartsScreenRoute extends _i6.PageRouteInfo<void> {
  const DisplayChartsScreenRoute()
      : super(
          DisplayChartsScreenRoute.name,
          path: '/displayCharts',
        );

  static const String name = 'DisplayChartsScreenRoute';
}

/// generated route for
/// [_i4.ChooseStateScreenPage]
class ChooseStateScreenRoute extends _i6.PageRouteInfo<void> {
  const ChooseStateScreenRoute()
      : super(
          ChooseStateScreenRoute.name,
          path: '/chooseStates',
        );

  static const String name = 'ChooseStateScreenRoute';
}

/// generated route for
/// [_i5.ForecastScreenPage]
class ForecastScreenRoute extends _i6.PageRouteInfo<void> {
  const ForecastScreenRoute()
      : super(
          ForecastScreenRoute.name,
          path: '/displayForecast',
        );

  static const String name = 'ForecastScreenRoute';
}
