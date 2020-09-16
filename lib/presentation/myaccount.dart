import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery/presentation/custom/cutom_scaffold.dart';
import 'package:grocery/presentation/custom/profile_image.dart';
import 'package:grocery/presentation/custom/text_icon_card.dart';
import 'package:grocery/presentation/my_offer_notifications_history.dart';
import 'package:grocery/presentation/payment_page.dart';
import 'package:grocery/presentation/splashpage.dart';
import 'package:grocery/utils/default.dart';
import 'package:grocery/utils/string_values.dart';
import 'package:grocery/utils/styles.dart';

class MyAccount extends StatefulWidget {
  static const String routeNamed = 'MyAccount';

  @override
  _MyAccountState createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  _navigateToMorePage() {
    currentPage = 3;
    Navigator.pushNamed(context, SplashPage.routeNamed);
  }

  _navigateToMyOfferPage() {
    offer_notify_history = 0;
    Navigator.pushNamed(context, OfferNotifyHistoryPage.routeNamed);
  }

  _navigateToMyNotificationPage() {
    offer_notify_history = 1;
    Navigator.pushNamed(context, OfferNotifyHistoryPage.routeNamed);
  }


    _navigateToMyHistoryPage() {
    offer_notify_history = 2;
    Navigator.pushNamed(context, OfferNotifyHistoryPage.routeNamed);
  }

  
    _navigateToPaymentPage() {
    Navigator.pushNamed(context, PaymentPage.routeNamed);
  }



  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appbarOnTap: _navigateToMorePage,
      appBarText: 'My Account',
      body: Container(
        color: Styles.PRIMARY_COLOR,
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 32),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ProfileImage(
                  floatButton: true,
                  icon: Icons.access_alarm,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      child: Text(
                        Strings.DEFAULT_USER,
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                    Container(
                      child: Text(
                        Strings.DEFAUTLT_EMAIL,
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.black.withOpacity(0.5),
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Container(
                      child: Text(
                        Strings.DEFAULT_NUMBER,
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.black.withOpacity(0.5),
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(
                      height: ScreenUtil.instance.setHeight(5),
                    ),
                    ProfileImage(
                      floatButton: true,
                      image: false,
                      icon: Icons.access_alarm,
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: ScreenUtil.instance.setHeight(70),
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 1),
                child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 16, horizontal: 10),
                    margin: EdgeInsets.only(
                        bottom: ScreenUtil.instance.setHeight(24)),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                              color: Styles.CUSTOM_SHADOW_COLOR,
                              blurRadius: 10,
                              offset: Offset(4, 4))
                        ]),
                    child: Container(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: _navigateToMyHistoryPage,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Text(
                                  Strings.HISTORY,
                                  style: TextStyle(
                                      fontSize: 19,
                                      color: Colors.black,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Container(
                                child: Icon(
                                  Icons.arrow_forward,
                                  size: 30,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: ScreenUtil.instance.setHeight(24),
                        ),
                        GestureDetector(
                          onTap: _navigateToPaymentPage,
                                                  child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Text(
                                  Strings.PAYMENT_MATHODS,
                                  style: TextStyle(
                                      fontSize: 19,
                                      color: Colors.black,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Container(
                                child: Icon(
                                  Icons.arrow_forward,
                                  size: 30,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: ScreenUtil.instance.setHeight(24),
                        ),
                        GestureDetector(
                          onTap: _navigateToMyNotificationPage,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Text(
                                  Strings.NOTIFICATIONS,
                                  style: TextStyle(
                                      fontSize: 19,
                                      color: Colors.black,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Container(
                                child: Icon(
                                  Icons.arrow_forward,
                                  size: 30,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: ScreenUtil.instance.setHeight(24),
                        ),
                        GestureDetector(
                          onTap: _navigateToMyOfferPage,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Text(
                                  Strings.MY_OFFERS,
                                  style: TextStyle(
                                      fontSize: 19,
                                      color: Colors.black,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Container(
                                child: Icon(
                                  Icons.arrow_forward,
                                  size: 30,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    )))),
            SizedBox(
              height: ScreenUtil.instance.setHeight(64),
            ),
            CustomTextIconCard(
              visiblePreIcon: true,
              preIcon: Icons.developer_board,
              preIconSize: 30,
              text: Strings.FAQS,
              textSize: 19,
              visiblePostIcon: true,
              postIcon: Icons.arrow_forward,
              postIconSize: 25,
            ),
            CustomTextIconCard(
              visiblePreIcon: true,
              preIcon: Icons.contacts,
              preIconSize: 30,
              text: Strings.CONTACT_US,
              textSize: 19,
              visiblePostIcon: true,
              postIcon: Icons.arrow_forward,
              postIconSize: 25,
            ),
          ],
        ),
      ),
    );
  }
}
