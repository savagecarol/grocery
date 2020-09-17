import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery/presentation/custom/small_text_card.dart';
import 'package:grocery/utils/string_values.dart';
import 'package:grocery/utils/styles.dart';


class CustomNearCard extends StatelessWidget {
  final String image;
  final String name;
  final String address;
  final String rating;
  final String time;
  final bool menupage;
  final Function onTap;

  CustomNearCard(
      {this.image,
      this.name,
      this.address,
      this.rating,
      this.time,
      this.menupage = false,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          (menupage) ? EdgeInsets.all(0) : EdgeInsets.symmetric(horizontal: 16),
      child: InkWell(
        onTap: onTap,
        child: Container(
          margin: EdgeInsets.only(bottom: 14),

           decoration: BoxDecoration(
                        color: Styles.PRIMARY_COLOR,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                              color: Styles.CUSTOM_SHADOW_COLOR,
                              blurRadius: 15,
                              offset: Offset(0, 2))
                        ]),

          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                height: (menupage)
                    ? ScreenUtil.instance.setHeight(205)
                    : ScreenUtil.instance.setHeight(120),
                width: (menupage)
                    ? ScreenUtil.instance.setWidth(190)
                    : ScreenUtil.instance.setWidth(190),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Styles.PRIMARY_COLOR,
                    image: DecorationImage(
                        image: NetworkImage(image), fit: BoxFit.fill)),
              ),
              Padding(
                padding: (menupage)
                    ? EdgeInsets.symmetric(horizontal: 8, vertical: 20)
                    : EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(name,
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: (menupage)
                                  ? 20
                                  : 16,
                              fontWeight: FontWeight.w600)),
                      SizedBox(
                        height: (menupage)
                            ? ScreenUtil.instance.setHeight(10)
                            : ScreenUtil.instance.setHeight(5),
                      ),
                      Container(
                        width:ScreenUtil.instance.setWidth(130) ,
                        child: Text(
                          address,
                          style: TextStyle(
                              fontSize: (menupage) ? 16 : 12,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                      SizedBox(
                        height: (menupage)
                            ? ScreenUtil.instance.setHeight(10)
                            : ScreenUtil.instance.setHeight(5),
                      ),
                      Row(
                        children: <Widget>[
                          SizedBox(
                            width: ScreenUtil.instance.setWidth(5),
                          ),
                          Icon(
                            Icons.star,
                            color: Styles.ICON_COLOR,
                            size: 16,
                          ),
                          SizedBox(
                            width: ScreenUtil.instance.setWidth(5),
                          ),
                          Text(
                            rating,
                          ),
                          SizedBox(
                            width: ScreenUtil.instance.setWidth(15),
                          ),
                          Icon(
                            Icons.access_time,
                            color: Styles.ICON_COLOR,
                            size: 16,
                          ),
                          SizedBox(
                            width: (menupage)
                                ? ScreenUtil.instance.setWidth(10)
                                : ScreenUtil.instance.setWidth(5),
                          ),
                          Text(
                            time,
                          )
                        ],
                      ),
                      Container(
                          child: (menupage)
                              ? SizedBox(
                                  height: ScreenUtil.instance.setHeight(8),
                                )
                              : Container()),
                      Container(
                          child: (menupage)
                              ? CustomSmallTextCard(
                                  preIcon: Icons.headset_mic,
                                  preIconSize: 18,
                                  labelText: Strings.CONTACT_US,
                                  sizelabelText: 18,
                                  visiblepreIcon: true,
                                  margin: true,
                                )
                              : Container()),
                      Container(
                          child: (menupage)
                              ? CustomSmallTextCard(
                                  preIcon: Icons.arrow_forward,
                                  preIconSize: 18,
                                  labelText: Strings.RATE_US,
                                  sizelabelText: 18,
                                  visiblepreIcon: true,
                                  margin: true,
                                )
                              : Container()),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
