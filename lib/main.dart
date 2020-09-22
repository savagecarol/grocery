import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:grocery/presentation/basket.dart';
import 'package:grocery/presentation/delivery_page.dart';
import 'package:grocery/presentation/vendor.dart';
import 'package:grocery/presentation/Listing.dart';
import 'package:grocery/presentation/my_offer_notifications_history.dart';
import 'package:grocery/presentation/myaccount.dart';
import 'package:grocery/presentation/payment_page.dart';
import 'package:grocery/presentation/lister.dart';
import 'package:grocery/presentation/login_otp_detail.dart';
import 'package:grocery/presentation/splashpage.dart';
import 'package:grocery/presentation/vendorsubcategory.dart';
import 'package:grocery/utils/string_values.dart';

void main() => runApp(Grocery());

class Grocery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
        title: Strings.APP_NAME,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: Colors.white,),
        initialRoute: SplashPage.routeNamed,
        routes: {
            SplashPage.routeNamed: (BuildContext context) => SplashPage(),
            MyAccount.routeNamed: (BuildContext context) => MyAccount(),
            OfferNotifyHistoryPage.routeNamed: (BuildContext context) => OfferNotifyHistoryPage(),
            PaymentPage.routeNamed: (BuildContext context) => PaymentPage(),
            VendorPage.routeNamed: (BuildContext context) => VendorPage(),
            ListingPage .routeNamed: (BuildContext context) => ListingPage (),
            Lister.routeNamed: (BuildContext context) => Lister(),
            RegistrationOTPLoginPage.routeNamed: (BuildContext context) => RegistrationOTPLoginPage(),
            SubCategory.routeNamed: (BuildContext context) => SubCategory(),
                Basket.routeNamed: (BuildContext context) => Basket(),
                Delivery.routeNamed: (BuildContext context) => Delivery(),
        });
  }
}
