import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery/utils/styles.dart';
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
            boxShadow: [
              BoxShadow(
                  color: Styles.CUSTOM_SHADOW_COLOR,
                  blurRadius: 20,
                  offset: Offset(2, 4))
            ],
             image: DecorationImage(
                          image: NetworkImage(image),
                          fit: BoxFit.fill)
            
            
            ),

                );
  }
}