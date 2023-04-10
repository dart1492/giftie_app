import 'package:auto_route/auto_route.dart';
import 'package:giftie_app/routes/router.gr.dart' as gr;

@AutoRouterConfig()
class AppRouter extends gr.$AppRouter {
  @override
  RouteType get defaultRouteType =>
      const RouteType.material(); //.cupertino, .adaptive ..etc

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: gr.Root.page,
          path: '/',
          children: [
            AutoRoute(
              page: gr.EmptyHomePage.page,
              path: 'home',
              children: [
                AutoRoute(page: gr.Home.page, path: ''),
                AutoRoute(page: gr.Full_gift_card.page),
              ],
            ),
            AutoRoute(
              page: gr.Riddles.page,
              path: 'riddles',
            ),
          ],
        ),
        AutoRoute(page: gr.Checkout.page),
      ];
}

@RoutePage(name: 'EmptyHomePage')
class EmptyHomePage extends AutoRouter {
  const EmptyHomePage({super.key});
}
