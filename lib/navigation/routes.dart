import 'package:auto_route/auto_route.dart';
import 'package:flutter_dating_app/navigation/routes.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends $AppRouter {
  AppRouter() : super();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: LandingRoute.page, initial: true), // this is the initial route of the app
        AutoRoute(page: SignUpRoute.page)
      ];
}
