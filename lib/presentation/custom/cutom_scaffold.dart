import 'package:flutter/material.dart';
import 'package:grocery/utils/styles.dart';

class CustomScaffold extends StatelessWidget {
  final Function appbarOnTap;
  final Widget body;
  final String appBarText;

  CustomScaffold({
    this.appbarOnTap,
    this.body,
    this.appBarText,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Styles.PRIMARY_COLOR,
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              IconButton(
                icon: new Icon(
                  Icons.arrow_back,
                  color: Styles.ICON_COLOR,
                  size: 28,
                ),
                onPressed: appbarOnTap,
              ),
              Text(
                appBarText,
                style: TextStyle(
                    fontSize: 19,
                    color: Colors.black,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
        body: body,
      ),
    );
  }
}
