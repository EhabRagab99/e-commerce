import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:e_commerce_app/UI/ProfileScreen/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Theme/theme.dart';
import '../models/nav_bar_btn_model.dart';
import 'CartScreen/cart_screen.dart';
import 'FavouritesScreen/favourites_screen.dart';
import 'HomeScreen/home_screen.dart';
import 'NotificationScreen/notification_screen.dart';

class MainScreen extends StatefulWidget {
  static const String routeName = "/mainScreen";

  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _page = 0;

  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 0,
        height: 75.0,
        items: navBtn
            .map(
              (e) => Container(
                padding: EdgeInsets.all(18.w),
                child: Column(
                  children: [
                    Icon(
                      e.icon,
                      size: 20.w,
                      color: e.id == _page
                          ? ThemeClass.primaryColor
                          : ThemeClass.accentColor,
                    ),
                    e.id != _page
                        ? Text(
                            e.name,
                            style: TextStyle(
                                fontSize: 10.sp,
                                color: ThemeClass.blackColor,
                                overflow: TextOverflow.ellipsis),
                          )
                        : Container(),
                  ],
                ),
              ),
            )
            .toList(),
        color: Colors.white,
        buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.transparent,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
        letIndexChange: (index) => true,
      ),
      body: navBtn[_page].routeName,
    );
  }
}

List<NavBarBtnModel> get navBtn => [
      NavBarBtnModel(
          id: 0,
          icon: Icons.home,
          name: 'Grocery',
          routeName: const HomeScreen()),
      NavBarBtnModel(
          id: 1,
          icon: Icons.notifications_outlined,
          name: 'News',
          routeName: const NotificationScreen()),
      NavBarBtnModel(
          id: 2,
          icon: Icons.shopping_cart_outlined,
          name: 'Cart',
          routeName: const CartScreen()),
      NavBarBtnModel(
          id: 2,
          icon: Icons.favorite_border,
          name: 'Cart',
          routeName: const FavouritesScreen()),
      NavBarBtnModel(
          id: 2,
          icon: Icons.person_outline,
          name: 'Cart',
          routeName: const ProfileScreen()),
    ];
