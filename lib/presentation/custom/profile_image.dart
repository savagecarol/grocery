import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery/utils/string_values.dart';
import 'package:grocery/utils/styles.dart';

class ProfileImage extends StatelessWidget {
  final bool floatButton;
  final bool image;
  final Function onTap;
  final IconData icon;
  ProfileImage({
    this.floatButton = false,
    this.image = true,
    this.onTap,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      height: (image)
          ? ScreenUtil.instance.setHeight(90)
          : ScreenUtil.instance.setHeight(45),
      width: (image)
          ? ScreenUtil.instance.setWidth(90)
          : ScreenUtil.instance.setWidth(45),
      child: (image)
          ? Stack(
              children: [
                Container(
                  height: ScreenUtil.instance.setHeight(80),
                  width: ScreenUtil.instance.setWidth(80),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 30,
                            offset: Offset(2, 4))
                      ],
                      shape: BoxShape.circle,
                      color: Colors.white,
                      image: DecorationImage(
                          image: NetworkImage(Strings.DEFAULT_USER_IMAGE),
                          fit: BoxFit.fill)),
                ),
                Positioned(
                  top: ScreenUtil.instance.setHeight(40),
                  right: .1,
                  child: (floatButton == true)
                      ? Container(
                          height: ScreenUtil.instance.setHeight(45),
                          width: ScreenUtil.instance.setWidth(45),
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 10,
                                    offset: Offset(2, 5))
                              ],
                              shape: BoxShape.circle,
                              color: Styles.PRIMARY_COLOR),
                          child: Center(
                            child: IconButton(
                                icon: Icon(
                                  icon,
                                  color: Styles.BOTTOMNAVIGATIONBAR_ICON_COLOR,
                                ),
                                onPressed: onTap),
                          ),
                        )
                      : Container(),
                )
              ],
            )
          : Container(
              height: ScreenUtil.instance.setHeight(44),
              width: ScreenUtil.instance.setWidth(44),
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: Styles.CUSTOM_SHADOW_COLOR,
                    blurRadius: 2,
                    offset: Offset(0, 2))
              ], shape: BoxShape.circle, color: Styles.PRIMARY_COLOR),
              child: Center(
                child: IconButton(
                    icon: Icon(
                      icon,
                      color: Styles.BOTTOMNAVIGATIONBAR_ICON_COLOR,
                    ),
                    onPressed: onTap),
              ),
            ),
    );
  }
}
