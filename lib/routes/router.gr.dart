// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;
import 'package:giftie_app/models/gift_card.dart' as _i9;
import 'package:giftie_app/routes/router.dart' as _i1;
import 'package:giftie_app/views/checkout/checkout.dart' as _i2;
import 'package:giftie_app/views/full_gift_card/full_gift_card_screen.dart'
    as _i3;
import 'package:giftie_app/views/home/home_screen.dart' as _i4;
import 'package:giftie_app/views/riddles/riddles_screen.dart' as _i5;
import 'package:giftie_app/views/root/root.dart' as _i6;

abstract class $AppRouter extends _i7.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    EmptyHomePage.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.EmptyHomePage(),
      );
    },
    Checkout.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.CheckoutScreen(),
      );
    },
    Full_gift_card.name: (routeData) {
      final args = routeData.argsAs<Full_gift_cardArgs>();
      return _i7.AutoRoutePage<bool>(
        routeData: routeData,
        child: _i3.FullGiftCardScreen(
          key: args.key,
          giftCard: args.giftCard,
        ),
      );
    },
    Home.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.HomeScreen(),
      );
    },
    Riddles.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.RiddlesScreen(),
      );
    },
    Root.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.Root(),
      );
    },
  };
}

/// generated route for
/// [_i1.EmptyHomePage]
class EmptyHomePage extends _i7.PageRouteInfo<void> {
  const EmptyHomePage({List<_i7.PageRouteInfo>? children})
      : super(
          EmptyHomePage.name,
          initialChildren: children,
        );

  static const String name = 'EmptyHomePage';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i2.CheckoutScreen]
class Checkout extends _i7.PageRouteInfo<void> {
  const Checkout({List<_i7.PageRouteInfo>? children})
      : super(
          Checkout.name,
          initialChildren: children,
        );

  static const String name = 'Checkout';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i3.FullGiftCardScreen]
class Full_gift_card extends _i7.PageRouteInfo<Full_gift_cardArgs> {
  Full_gift_card({
    _i8.Key? key,
    required _i9.GiftCard giftCard,
    List<_i7.PageRouteInfo>? children,
  }) : super(
          Full_gift_card.name,
          args: Full_gift_cardArgs(
            key: key,
            giftCard: giftCard,
          ),
          initialChildren: children,
        );

  static const String name = 'Full_gift_card';

  static const _i7.PageInfo<Full_gift_cardArgs> page =
      _i7.PageInfo<Full_gift_cardArgs>(name);
}

class Full_gift_cardArgs {
  const Full_gift_cardArgs({
    this.key,
    required this.giftCard,
  });

  final _i8.Key? key;

  final _i9.GiftCard giftCard;

  @override
  String toString() {
    return 'Full_gift_cardArgs{key: $key, giftCard: $giftCard}';
  }
}

/// generated route for
/// [_i4.HomeScreen]
class Home extends _i7.PageRouteInfo<void> {
  const Home({List<_i7.PageRouteInfo>? children})
      : super(
          Home.name,
          initialChildren: children,
        );

  static const String name = 'Home';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i5.RiddlesScreen]
class Riddles extends _i7.PageRouteInfo<void> {
  const Riddles({List<_i7.PageRouteInfo>? children})
      : super(
          Riddles.name,
          initialChildren: children,
        );

  static const String name = 'Riddles';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i6.Root]
class Root extends _i7.PageRouteInfo<void> {
  const Root({List<_i7.PageRouteInfo>? children})
      : super(
          Root.name,
          initialChildren: children,
        );

  static const String name = 'Root';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}
