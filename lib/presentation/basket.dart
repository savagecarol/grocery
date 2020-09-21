import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:grocery/presentation/custom/custom_cart.dart';
import 'package:grocery/presentation/custom/cutom_scaffold.dart';
import 'package:grocery/presentation/custom/menu_card.dart';
import 'package:grocery/presentation/custom/row_card.dart';
import 'package:grocery/presentation/custom/textfield.dart';

import 'package:grocery/utils/string_values.dart';
import 'package:grocery/utils/styles.dart';

class Basket extends StatefulWidget {
  static const String routeNamed = 'basket';

  @override
  _BasketState createState() => _BasketState();
}

class _BasketState extends State<Basket> {
  _navigatetoPreviouspage() {
     Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        appBarText: Strings.BASKET,
        appBarTextSize: 16,
        appbarOnTap: _navigatetoPreviouspage,
        body: Container(
          color: Styles.PRIMARY_COLOR,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: ScreenUtil.instance.setHeight(32),),
                CustomTextField(
            padding: 24,
            hintText: Strings.SELECT_DELIEVERY_LOCATION,
            hintTextSize: 16,
            icon: Icons.location_on,
            isPrefixIcon: true,
          ),
            SizedBox(height: ScreenUtil.instance.setHeight(8)),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Container(
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: 7,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 16, horizontal: 16),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: ScreenUtil.instance.setHeight(90),
                                      width: ScreenUtil.instance.setWidth(90),
                                      decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                                color:
                                                    Styles.CUSTOM_SHADOW_COLOR,
                                                blurRadius: 4,
                                                offset: Offset(0, 2))
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: Colors.white,
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  Strings.DEFAULT_GENRAL_IMAGE),
                                              fit: BoxFit.fill)),
                                    ),
                                    SizedBox(
                                      width: ScreenUtil.instance.setWidth(8),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          color: Colors.white,
                                          child: Text(
                                            Strings.DEFAULT_SHOP,
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.black,
                                                fontFamily: 'Montserrat',
                                                fontWeight: FontWeight.w600),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                        Container(
                                          color: Colors.white,
                                          child: Text(
                                            Strings.DEFAUTLT_ADDRESS,
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.black
                                                    .withOpacity(.5),
                                                fontFamily: 'Montserrat',
                                                fontWeight: FontWeight.w500),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                        Container(
                                          color: Colors.white,
                                          child: Text(
                                            Strings.DEFAULT_PRICE,
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.black
                                                    .withOpacity(.5),
                                                fontFamily: 'Montserrat',
                                                fontWeight: FontWeight.w500),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                RowCardField(),
                              ],
                            ),
                          ),
                        );
                      }),
                ),
              )),
              CustomCart(),
            ],
          ),
        ));
  }
}
