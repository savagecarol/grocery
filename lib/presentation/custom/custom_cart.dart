import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery/utils/string_values.dart';
import 'package:grocery/utils/styles.dart';

class CustomCart extends StatelessWidget {
  final bool onlyUp;
  final String inprice;
  final Function onTap;
  final bool onlyBetween;
  final bool onlyDown;

  CustomCart({
    this.onlyUp = false,
    this.inprice,
    this.onTap,
    this.onlyBetween=false,
    this.onlyDown = false,
  });

  _blockWidgdet(String s, String t) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      child: Column(
        children: [
          Container(
            child: Text(
              s,
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(height: ScreenUtil.instance.setHeight(5)),
          Container(
            child: Text(
              t,
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }

  _row(String s, String price, FontWeight fontWeight) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          child: Text(
            s,
            style: TextStyle(
                fontSize: 14, fontFamily: 'Montserrat', fontWeight: fontWeight),
          ),
        ),
        Container(
          child: Text(
            price,
            style: TextStyle(
                fontSize: 14, fontFamily: 'Montserrat', fontWeight: fontWeight),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 24),
                child: Container(
                    child: (onlyUp == true)
                        ? Container(
                            child: Text(inprice,
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600)),
                          )
                        : Container()),
              ),
              Container(
                  child: (onlyUp == true)
                      ? Padding(
                          padding: const EdgeInsets.only(right: 24),
                          child: GestureDetector(
                            onTap: onTap,
                            child: Container(
                              child: Text(Strings.VIEW_BASKET,
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400)),
                            ),
                          ),
                        )
                      : Container()),
            ],
          ),
          Container(
              child: (onlyUp == true)
                  ? SizedBox(
                      height: ScreenUtil.instance.setHeight(10),
                    )
                  : Container()),

          Container(

                      child:(onlyBetween==true)?Container(
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                    color: Styles.CUSTOM_SHADOW_COLOR,
                    blurRadius: 10,
                    offset: Offset(0, 2))
              ]),
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _blockWidgdet(Strings.ITEMS, 'rs.12'),
                  Container(
                    color: Colors.black,
                    width: ScreenUtil.instance.setWidth(1),
                    height: ScreenUtil.instance.setHeight(40),
                  ),
                  _blockWidgdet(Strings.SAVINGS, 'rs.12'),
                  Container(
                    color: Colors.black,
                    width: ScreenUtil.instance.setWidth(1),
                    height: ScreenUtil.instance.setHeight(40),
                  ),
                  _blockWidgdet(Strings.TOTAL, 'rs.12'),
                ],
              ),
            ):Container()
          ),


          Container(
              child: (onlyDown == true)
                  ? Container(
                      padding: EdgeInsets.symmetric(horizontal: 32),
                      child: Container(
                        margin: EdgeInsets.only(
                            bottom: ScreenUtil.instance.setHeight(32)),
                        decoration: BoxDecoration(
                            color: Styles.PRIMARY_COLOR,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(5),
                                bottomRight: Radius.circular(5)),
                            boxShadow: [
                              BoxShadow(
                                  color: Styles.CUSTOM_SHADOW_COLOR,
                                  blurRadius: 15,
                                  offset: Offset(0, 2))
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 24),
                          child: Column(
                            children: [
                              _row(Strings.SUB_TOTAL, Strings.DEFAULT_PRICE,
                                  FontWeight.w500),
                              SizedBox(
                                height: ScreenUtil.instance.setHeight(8),
                              ),
                              _row(Strings.DELIVERY_FEE, Strings.DEFAULT_PRICE,
                                  FontWeight.w500),
                              SizedBox(
                                height: ScreenUtil.instance.setHeight(8),
                              ),
                              _row(Strings.TAXES, Strings.DEFAULT_PRICE,
                                  FontWeight.w500),
                              SizedBox(
                                height: ScreenUtil.instance.setHeight(8),
                              ),
                              _row(Strings.TOTAL, Strings.DEFAULT_PRICE,
                                  FontWeight.w900),
                            ],
                          ),
                        ),
                      ),
                    )
                  : Container())
        ],
      ),
    );
  }
}
