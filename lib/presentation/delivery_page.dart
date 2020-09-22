import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery/presentation/custom/custom_cart.dart';
import 'package:grocery/presentation/custom/cutom_scaffold.dart';
import 'package:grocery/presentation/custom/text_icon_card.dart';
import 'package:grocery/presentation/payment_page.dart';
import 'package:grocery/presentation/splashpage.dart';
import 'package:grocery/utils/string_values.dart';
import 'package:grocery/utils/styles.dart';

class Delivery extends StatefulWidget {
  static const String routeNamed = 'delivery';

  @override
  _DeliveryState createState() => _DeliveryState();
}

class _DeliveryState extends State<Delivery> {
  _navigateToCartPage() {
    Navigator.pushNamed(context, SplashPage.routeNamed);
  }

  _navigateToPaymentPage() {
     Navigator.pushNamed(context, PaymentPage.routeNamed);
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBarText: Strings.DELIVERY,
      appBarTextSize: 16,
      appbarOnTap: _navigateToCartPage,
      body: Container(
        color: Styles.PRIMARY_COLOR,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Styles.BOTTOMNAVIGATIONBAR_BOTTOM_BORDER_COLOR,
                          size: 30,
                        ),
                        Text(Strings.DELIVERY_LOCATION,
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Montserrat',
                                color: Colors.black.withOpacity(0.5),
                                fontWeight: FontWeight.w300)),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        Strings.CHANGE,
                        style: TextStyle(
                            fontSize: 16,
                            color: Styles.ICON_COLOR,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w500),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: ScreenUtil.instance.setHeight(120),
              ),
              CustomCart(
                onlyBetween: true,
              ),
              SizedBox(
                height: ScreenUtil.instance.setHeight(64),
              ),
              CustomCart(
                onlyDown: true,
              ),
              SizedBox(
                height: ScreenUtil.instance.setHeight(64),
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
                  onTap: _navigateToPaymentPage,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
