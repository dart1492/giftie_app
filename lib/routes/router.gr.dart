// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;
import 'package:giftie_app/models/gift_card.dart' as _i10;
import 'package:giftie_app/routes/router.dart' as _i1;
import 'package:giftie_app/views/aniamtion_showcase/animation_showcase_screen.dart'
    as _i2;
import 'package:giftie_app/views/checkout/checkout_screen.dart' as _i3;
import 'package:giftie_app/views/full_gift_card/full_gift_card_screen.dart'
    as _i4;
import 'package:giftie_app/views/home/home_screen.dart' as _i5;
import 'package:giftie_app/views/riddles/riddles_screen.dart' as _i6;
import 'package:giftie_app/views/root/root.dart' as _i7;

abstract class $AppRouter extends _i8.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    EmptyHomePage.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.EmptyHomePage(),
      );
    },
    WelcomeRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.WelcomeScreen(),
      );
    },
    CheckoutRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.CheckoutScreen(),
      );
    },
    FullGiftCardRoute.name: (routeData) {
      final args = routeData.argsAs<FullGiftCardRouteArgs>();
      return _i8.AutoRoutePage<bool>(
        routeData: routeData,
        child: _i4.FullGiftCardScreen(
          key: args.key,
          giftCard: args.giftCard,
        ),
      );
    },
    Home.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.HomeScreen(),
      );
    },
    Riddles.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.RiddlesScreen(),
      );
    },
    Root.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.Root(),
      );
    },
  };
}

/// generated route for
/// [_i1.EmptyHomePage]
class EmptyHomePage extends _i8.PageRouteInfo<void> {
  const EmptyHomePage({List<_i8.PageRouteInfo>? children})
      : super(
          EmptyHomePage.name,
          initialChildren: children,
        );

  static const String name = 'EmptyHomePage';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i2.WelcomeScreen]
class WelcomeRoute extends _i8.PageRouteInfo<void> {
  const WelcomeRoute({List<_i8.PageRouteInfo>? children})
      : super(
          WelcomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'WelcomeRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i3.CheckoutScreen]
class CheckoutRoute extends _i8.PageRouteInfo<void> {
  const CheckoutRoute({List<_i8.PageRouteInfo>? children})
      : super(
          CheckoutRoute.name,
          initialChildren: children,
        );

  static const String name = 'CheckoutRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i4.FullGiftCardScreen]
class FullGiftCardRoute extends _i8.PageRouteInfo<FullGiftCardRouteArgs> {
  FullGiftCardRoute({
    _i9.Key? key,
    required _i10.GiftCard giftCard,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          FullGiftCardRoute.name,
          args: FullGiftCardRouteArgs(
            key: key,
            giftCard: giftCard,
          ),
          initialChildren: children,
        );

  static const String name = 'FullGiftCardRoute';

  static const _i8.PageInfo<FullGiftCardRouteArgs> page =
      _i8.PageInfo<FullGiftCardRouteArgs>(name);
}

class FullGiftCardRouteArgs {
  const FullGiftCardRouteArgs({
    this.key,
    required this.giftCard,
  });

  final _i9.Key? key;

  final _i10.GiftCard giftCard;

  @override
  String toString() {
    return 'FullGiftCardRouteArgs{key: $key, giftCard: $giftCard}';
  }
}

/// generated route for
/// [_i5.HomeScreen]
class Home extends _i8.PageRouteInfo<void> {
  const Home({List<_i8.PageRouteInfo>? children})
      : super(
          Home.name,
          initialChildren: children,
        );

  static const String name = 'Home';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i6.RiddlesScreen]
class Riddles extends _i8.PageRouteInfo<void> {
  const Riddles({List<_i8.PageRouteInfo>? children})
      : super(
          Riddles.name,
          initialChildren: children,
        );

  static const String name = 'Riddles';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i7.Root]
class Root extends _i8.PageRouteInfo<void> {
  const Root({List<_i8.PageRouteInfo>? children})
      : super(
          Root.name,
          initialChildren: children,
        );

  static const String name = 'Root';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}
