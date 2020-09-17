import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery/utils/styles.dart';

class CustomPopularCard extends StatelessWidget {
  final String image;
  final String name;
  final String address;
  final String rating;
  final String time;
  final Function onTap;
  final bool boxs;
  CustomPopularCard({
    this.image,
    this.name,
    this.address,
    this.rating,
    this.time,
    this.onTap,
    this.boxs,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: ScreenUtil.instance.setWidth(180),
          margin: EdgeInsets.only(right: 10,left:10),
          decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                              color: Styles.CUSTOM_SHADOW_COLOR,
                              blurRadius: 15,
                              offset: Offset(0, 2))
                        ]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: ScreenUtil.instance.setWidth(220),
                height: ScreenUtil.instance.setHeight(110),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(5),
                        topLeft: Radius.circular(5)),
                    color: Colors.white,
                    image: DecorationImage(
                        image: NetworkImage(image), fit: BoxFit.fill)),
                child: Stack(
                  alignment: Alignment.topRight,
                  children: <Widget>[
                    Positioned(
                        top: 0,
                        left: ScreenUtil.instance.setWidth(135),
                        child: Icon(Icons.bookmark,
                            size: 35, color: Styles.ICON_COLOR))
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 6, vertical: 6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(name,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 16,
                            fontWeight: FontWeight.w600)),
                    SizedBox(
                      height: ScreenUtil.instance.setHeight(5),
                    ),
                    Text(
                      address,
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w300),
                    ),
                    SizedBox(
                      height: ScreenUtil.instance.setHeight(5),
                    ),
                    Row(
                      children: <Widget>[
                        SizedBox(
                          width: ScreenUtil.instance.setWidth(5),
                        ),
                        Icon(
                          Icons.star,
                          color: Styles.ICON_COLOR,
                          size:16,
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
                          width: ScreenUtil.instance.setWidth(5),
                        ),
                        Text(
                          time,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
