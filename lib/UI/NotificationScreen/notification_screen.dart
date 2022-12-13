// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Utilities/background_canvas.dart';
import '../../Utilities/loading_screen.dart';

class NotificationScreen extends StatefulWidget {
  static const String routeName = "/NotificationScreen";

  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  bool loading = false;
  @override
  Widget build(BuildContext context) {
    return LoadingScreen(
      loading: loading,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: const Text('Notifications'),
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
