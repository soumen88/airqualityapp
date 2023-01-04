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
    ]
)


class $AppRouter{

}