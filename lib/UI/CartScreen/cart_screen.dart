// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Utilities/background_canvas.dart';
import '../../Utilities/loading_screen.dart';

class CartScreen extends StatefulWidget {
  static const String routeName = "/CartScreen";

  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  bool loading = false;
  @override
  Widget build(BuildContext context) {
    return LoadingScreen(
      loading: loading,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: const Text('Home'),
          backgroundColor: Colors.transparent,
        ),
        body: CanvasBackground(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: const Center(
              child: Text('There are no notifications yet!'),
            ),
          ),
        ),
      ),
    );
  }
}
