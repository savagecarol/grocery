import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery/presentation/custom/row_card.dart';
import 'package:grocery/utils/string_values.dart';
import 'package:grocery/utils/styles.dart';

class CustomMenuCard extends StatelessWidget {
  final String image;
  final String name;
  final String address;
  final String rating;
  final String time;
  final Function onTap;
  final bool boxs;
  final bool istrue;
  final Function onLongPress;
  CustomMenuCard({
    this.image,
    this.name,
    this.address,
    this.rating,
    this.time,
    this.onTap,
    this.boxs,
    this.istrue = true,
    this.onLongPress,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 1),
      child: InkWell(
        onLongPress: onLongPress,
        child: Container(
            margin: EdgeInsets.only(left: 8, right: 8, bottom: 16),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Styles.CUSTOM_SHADOW_COLOR.withOpacity(.5),
                      blurRadius: 2,
                      offset: Offset(0, 0))
                ]),
            child: (istrue)
                ? Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: ScreenUtil.instance.setWidth(220),
                          height: ScreenUtil.instance.setHeight(130),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(5),
                                  topLeft: Radius.circular(5)),
                              color: Colors.white,
                              image: DecorationImage(
                                  image: NetworkImage(
                                      Strings.DEFAULT_GENRAL_IMAGE),
                                  fit: BoxFit.fill)),
                        ),
                        SizedBox(height: ScreenUtil.instance.setWidth(10)),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              child: Text('Chips',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600)),
                            ),
                            SizedBox(
                              height: ScreenUtil.instance.setHeight(5),
                            ),
                            Container(
                              child: Text(
                                'tasty ans spicy',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            SizedBox(
                              height: ScreenUtil.instance.setHeight(10),
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    'rs.10',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w300),
                                  ),
                                  RowCardField()
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                : Container(
                    child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Container(
                      child: Row(
                        children: <Widget>[
                          Container(
                            width: ScreenUtil.instance.setWidth(100),
                            height: ScreenUtil.instance.setHeight(110),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.white,
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'https://cf.bstatic.com/images/hotel/max1024x768/214/214429380.jpg'),
                                    fit: BoxFit.fill)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Container(
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                  Text('food name',
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500)),
                                  SizedBox(
                                    height: ScreenUtil.instance.setHeight(5),
                                  ),
                                  Text(
                                    'food information',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w300),
                                  ),
                                  SizedBox(
                                    height: ScreenUtil.instance.setHeight(5),
                                  ),
                                  Text(
                                    'price',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w300),
                                  )
                                ])),
                          ),
                          RowCardField()
                        ],
                      ),
                    ),
                  ))),
      ),
    );
  }
}
