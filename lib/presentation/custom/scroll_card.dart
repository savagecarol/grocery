import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CustomScrollContainerField extends StatelessWidget {
  final String image;
  CustomScrollContainerField({
    this.image,
  });

@override
  Widget build(BuildContext context) {
    return Container(
                  width:ScreenUtil.instance.setWidth(230),
                    height:ScreenUtil.instance.setWidth(130),
                  margin: EdgeInsets.symmetric(horizontal:10),
                   decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                         color: Colors.white,
                      image: DecorationImage(
                          image: NetworkImage(image),
                          fit: BoxFit.fill)),
                );
  }
}