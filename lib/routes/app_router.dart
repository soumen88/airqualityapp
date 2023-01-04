import 'package:airqualityapp/choosecountry/choose_country_screen.dart';
import 'package:auto_route/auto_route.dart';
import '../splash/splash_screen.dart';

@MaterialAutoRouter(
    replaceInRouteName:'Page,Route',
    routes: [
      AutoRoute(
        path: "/splash",
        initial: true,
        page: SplashScreenPage,
      ),
      AutoRoute(
        path: "/chooseCountry",
        page: ChooseCountryScreen,
      ),
    ]
)


class $AppRouter{

}