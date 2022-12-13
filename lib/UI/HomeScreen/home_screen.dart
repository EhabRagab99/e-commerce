// ignore_for_file: library_private_types_in_public_api

import 'package:e_commerce_app/Utilities/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Theme/theme.dart';
import '../../Utilities/background_canvas.dart';
import '../../Utilities/loading_screen.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "/HomeScreen";

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool loading = false;
  @override
  Widget build(BuildContext context) {
    return LoadingScreen(
      loading: loading,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        body: CanvasBackground(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(12.w),
                        decoration: BoxDecoration(
                          color: ThemeClass.primaryColor,
                          borderRadius: BorderRadius.only(
                            topLeft: const Radius.circular(100),
                            bottomLeft: const Radius.circular(100),
                            topRight: const Radius.circular(200),
                            bottomRight: Radius.circular(100.r),
                          ),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              color: ThemeClass.whiteColor,
                            ),
                            SizedBox(width: 4.w),
                            Text(
                              'Mustafa St.',
                              style: TextStyle(color: ThemeClass.whiteColor),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      CircleAvatar(
                        radius: 35.r,
                        child: Image.network(
                          Helper.imagePlaceHolder,
                          // width: 100.w,
                          // height: 100.h,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 35.h),
                  const SearchContainer(),
                  SizedBox(height: 35.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AddressWidget(),
                      AddressWidget(),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class AddressWidget extends StatelessWidget {
  const AddressWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 12.w,
        bottom: 12.w,
        left: 12.w,
        right: 50.w,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(color: ThemeClass.greyColor),
      ),
      child: Row(
        children: [
          Container(
            // padding: EdgeInsets.all(4.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.r),
              border: Border.all(color: ThemeClass.greyColor),
            ),
            child: Image.network(
              Helper.imagePlaceHolder,
              height: 50.h,
              width: 50.w,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 12.w),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'data',
                style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
              ),
              Text('data'),
              Text('data'),
            ],
          ),
        ],
      ),
    );
  }
}

class SearchContainer extends StatelessWidget {
  const SearchContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12.h),
        width: 375.w,
        height: 55.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.w),
            color: ThemeClass.textFieldBackgroundColor),
        alignment: Alignment.center,
        child: Row(
          children: [
            Icon(
              Icons.search,
              size: 20.sp,
            ),
            SizedBox(width: 20.w),
            Text(
              "Search in thousands of products",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.sp,
                  color: ThemeClass.greyColor),
            ),
          ],
        ),
      ),
    );
  }
}
