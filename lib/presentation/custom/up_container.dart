import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery/utils/styles.dart';

class CustomUpContainer extends StatelessWidget {

  final String image;
  final String skipOption;
 
  CustomUpContainer({
    this.image,
   this.skipOption,
  });


  

  @override
  Widget build(BuildContext context) {
    return Container(
        height: ScreenUtil.instance.setHeight(270),
        decoration: BoxDecoration(    
              color: Styles.ICON_COLOR,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                    color:Color(0xff000040), 
                    blurRadius: 10,
                    offset: Offset(0, 2))
              ]),
        child: Center(        
               child:Container(
              height: ScreenUtil.instance.setHeight(120),
              width: ScreenUtil.instance.setWidth(120),
              decoration: BoxDecoration(
               shape: BoxShape.circle, color: Styles.PRIMARY_COLOR,
                 image: DecorationImage(
                          image: NetworkImage(image),
                          fit: BoxFit.fill)),   
              ),
            ),
        );

  }
}