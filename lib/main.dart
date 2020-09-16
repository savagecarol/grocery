import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:grocery/presentation/my_offer_notifications_history.dart';
import 'package:grocery/presentation/myaccount.dart';
import 'package:grocery/presentation/payment_page.dart';
import 'package:grocery/presentation/registration.dart';
import 'package:grocery/presentation/splashpage.dart';
import 'package:grocery/utils/string_values.dart';
import 'package:grocery/utils/styles.dart';

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
        });
  }
}
