import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery/presentation/basket.dart';
import 'package:grocery/presentation/custom/custom_cart.dart';
import 'package:grocery/presentation/custom/text_icon_card.dart';
import 'package:grocery/presentation/delivery_page.dart';

import 'package:grocery/utils/string_values.dart';
import 'package:grocery/utils/styles.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  _navigateToBasketPage() {
    Navigator.pushNamed(context, Basket.routeNamed);
  }

  _navigateToDelivery() {
      Navigator.pushNamed(context, Delivery.routeNamed);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Styles.PRIMARY_COLOR,
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 32, horizontal: 32),
                  child: Text(
                    Strings.CART,
                    style: TextStyle(
                        fontSize: 22,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w900),
                  )),
              Expanded(
                child: Container(
                    // height: 3 * ScreenUtil.instance.setHeight(300),
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return CustomCart(
                            onlyUp: true,
                            onlyBetween: true,
                            inprice: Strings.GROCERY,
                            onTap: _navigateToBasketPage,
                            onlyDown: true,
                          );
                        })),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: CustomTextIconCard(
                  text: Strings.PROCEED_TO_PAY,
                  defaultColor: Styles.BOTTOMNAVIGATIONBAR_ICON_COLOR,
                  textSize: 16,
                  onRegpage: true,
                  visiblePostIcon: true,
                  postIcon: Icons.arrow_forward,
                  postIconSize: 22,
                  postIconColor: Styles.PRIMARY_COLOR,
                  otherContainer: true,
                  onTap: _navigateToDelivery,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
