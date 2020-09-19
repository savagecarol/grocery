import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery/utils/string_values.dart';
import 'package:grocery/utils/styles.dart';

class CustomUpContainer extends StatelessWidget {
  final String image;
  final bool skipOption;
  final Function onTap;

  CustomUpContainer({
    this.image,
    this.skipOption=false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: ScreenUtil.instance.setHeight(270),
          decoration: BoxDecoration(
              color: Styles.ICON_COLOR,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                    color: Color(0xff000040),
                    blurRadius: 10,
                    offset: Offset(0, 2))
              ]),
          child: Center(
            child: Container(
              height: ScreenUtil.instance.setHeight(130),
              width: ScreenUtil.instance.setWidth(130),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Styles.PRIMARY_COLOR,
                  image: DecorationImage(
                      image: NetworkImage(image), fit: BoxFit.fill)),
            ),
          ),
        ),
        Positioned(
          top: ScreenUtil.instance.setHeight(18),
          right:ScreenUtil.instance.setWidth(16),
          child:  (skipOption==true)? InkWell(
            onTap: onTap,
            child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    Strings.SKIP,
                    style: TextStyle(
                        fontSize: 18,
                        color: Styles.PRIMARY_COLOR,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Container(
                    child: Icon(Icons.arrow_forward,color: Styles.PRIMARY_COLOR,size: 22,),
                
                )
              ],
            )),
          ): Container(), 
        )
      ],
    );
  }
}
