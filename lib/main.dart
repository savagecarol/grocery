import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:grocery/presentation/myaccount.dart';
import 'package:grocery/presentation/registration.dart';
import 'package:grocery/presentation/splashpage.dart';
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
        theme: ThemeData(primaryColor: Colors.white),
        initialRoute: SplashPage.routeNamed,
        routes: {
           SplashPage.routeNamed: (BuildContext context) => SplashPage(),
           MyAccount.routeNamed: (BuildContext context) => MyAccount(),
        });
  }
}
