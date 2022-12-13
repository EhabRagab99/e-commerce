import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import '../../Theme/theme.dart';

class LoadingScreen extends StatelessWidget {
  final Widget child;
  final bool loading;
  const LoadingScreen({Key? key, required this.child, this.loading = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        child,
        loading
            ? Positioned.fill(
                child: Container(
                  color: Colors.grey.withOpacity(0.3),
                ),
              )
            : const SizedBox(),
        loading
            ? Positioned(
                child: LoadingAnimationWidget.threeRotatingDots(
                    color: ThemeClass.primaryColor, size: 50.sp),
              )
            : const SizedBox(),
      ],
    );
  }
}
