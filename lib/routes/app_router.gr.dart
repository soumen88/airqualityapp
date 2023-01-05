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
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../choosecountry/choose_country_screen.dart' as _i2;
import '../displaycharts/display_charts_screen_page.dart' as _i3;
import '../splash/splash_screen.dart' as _i1;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    SplashScreenRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i1.SplashScreenPage(),
      );
    },
    ChooseCountryScreen.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i2.ChooseCountryScreen(),
      );
    },
    DisplayChartsScreenRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i3.DisplayChartsScreenPage(),
      );
    },
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/splash',
          fullMatch: true,
        ),
        _i4.RouteConfig(
          SplashScreenRoute.name,
          path: '/splash',
        ),
        _i4.RouteConfig(
          ChooseCountryScreen.name,
          path: '/chooseCountry',
        ),
        _i4.RouteConfig(
          DisplayChartsScreenRoute.name,
          path: '/displayCharts',
        ),
      ];
}

/// generated route for
/// [_i1.SplashScreenPage]
class SplashScreenRoute extends _i4.PageRouteInfo<void> {
  const SplashScreenRoute()
      : super(
          SplashScreenRoute.name,
          path: '/splash',
        );

  static const String name = 'SplashScreenRoute';
}

/// generated route for
/// [_i2.ChooseCountryScreen]
class ChooseCountryScreen extends _i4.PageRouteInfo<void> {
  const ChooseCountryScreen()
      : super(
          ChooseCountryScreen.name,
          path: '/chooseCountry',
        );

  static const String name = 'ChooseCountryScreen';
}

/// generated route for
/// [_i3.DisplayChartsScreenPage]
class DisplayChartsScreenRoute extends _i4.PageRouteInfo<void> {
  const DisplayChartsScreenRoute()
      : super(
          DisplayChartsScreenRoute.name,
          path: '/displayCharts',
        );

  static const String name = 'DisplayChartsScreenRoute';
}
