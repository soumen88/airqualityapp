import 'package:injectable/injectable.dart';

import '../routes/app_router.gr.dart';

@module
abstract class RegisterModule{
  @singleton
  AppRouter get appRouter => AppRouter();
}