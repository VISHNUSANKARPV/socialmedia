import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileOuter extends StatelessWidget {
  const ProfileOuter({Key? key, this.image}) : super(key: key);
  final String? image;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110.h,
      width:110.w,
      decoration: BoxDecoration(
        color: Colors.black,
        border: Border.all(width: 2, color: Colors.black),
        borderRadius: BorderRadius.circular(60),
        image: DecorationImage(
            image:
                NetworkImage(image ?? 'assets/images/avatar-1-1536x1536.jpeg'),
            fit: BoxFit.cover,
            filterQuality: FilterQuality.high),
      ),
    );
  }
}
