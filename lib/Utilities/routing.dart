import 'package:e_commerce_app/UI/NotificationScreen/notification_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../UI/CartScreen/cart_screen.dart';
import '../UI/FavouritesScreen/favourites_screen.dart';
import '../UI/HomeScreen/home_screen.dart';
import '../UI/ProfileScreen/profile_screen.dart';
import '../UI/main_screen.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(MainScreen.routeName,
        child: (_, args) => const MainScreen(),
        transition: TransitionType.fadeIn,
        duration: const Duration(milliseconds: 300)),
    ChildRoute(HomeScreen.routeName,
        child: (_, args) => const HomeScreen(),
        transition: TransitionType.fadeIn,
        duration: const Duration(milliseconds: 300)),
    ChildRoute(NotificationScreen.routeName,
        child: (_, args) => NotificationScreen(),
        transition: TransitionType.fadeIn,
        duration: const Duration(milliseconds: 300)),
    ChildRoute(CartScreen.routeName,
        child: (_, args) => const CartScreen(),
        transition: TransitionType.fadeIn,
        duration: const Duration(milliseconds: 300)),
    ChildRoute(FavouritesScreen.routeName,
        child: (_, args) => FavouritesScreen(),
        transition: TransitionType.fadeIn,
        duration: const Duration(milliseconds: 300)),
    ChildRoute(ProfileScreen.routeName,
        child: (_, args) => const ProfileScreen(),
        transition: TransitionType.fadeIn,
        duration: const Duration(milliseconds: 300)),
  ];

  static ChildRoute defaultRoute(
      {required String routeName, required Widget child}) {
    return ChildRoute(routeName,
        child: (_, args) => child,
        transition: TransitionType.fadeIn,
        duration: const Duration(milliseconds: 300));
  }
}
