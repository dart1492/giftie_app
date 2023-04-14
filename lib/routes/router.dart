import 'package:auto_route/auto_route.dart';
import 'package:giftie_app/routes/router.gr.dart' as gr;

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends gr.$AppRouter {
  @override
  RouteType get defaultRouteType =>
      const RouteType.material(); //.cupertino, .adaptive ..etc

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: gr.WelcomeRoute.page, path: '/'),
        AutoRoute(
          page: gr.Root.page,
          path: '/root',
          children: [
            AutoRoute(
              page: gr.EmptyHomePage.page,
              path: 'home',
              children: [
                AutoRoute(page: gr.HomeRoute.page, path: ''),
                AutoRoute(page: gr.FullGiftCardRoute.page),
              ],
            ),
            AutoRoute(
              page: gr.RiddlesRoute.page,
              path: 'riddles',
            ),
          ],
        ),
        AutoRoute(page: gr.CheckoutRoute.page),
      ];
}

@RoutePage(name: 'EmptyHomePage')
class EmptyHomePage extends AutoRouter {
  const EmptyHomePage({super.key});
}
