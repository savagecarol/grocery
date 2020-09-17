import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery/presentation/custom/cutom_scaffold.dart';
import 'package:grocery/presentation/custom/text_icon_card.dart';
import 'package:grocery/presentation/pending_prescription.dart';
import 'package:grocery/presentation/splashpage.dart';
import 'package:grocery/utils/default.dart';
import 'package:grocery/utils/string_values.dart';
import 'package:grocery/utils/styles.dart';

class MedicalPage extends StatefulWidget {
  static const String routeNamed = 'Medical';

  @override
  _MedicalPageState createState() => _MedicalPageState();
}

class _MedicalPageState extends State<MedicalPage> {
  _navigateToHomePage() {
    currentPage = 0;
    Navigator.pushNamed(context, SplashPage.routeNamed);
  }

  _navigateToPendingReports() {
          Navigator.pushNamed(context, PendingReports.routeNamed);    
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appbarOnTap: _navigateToHomePage,
      appBarText: Strings.MEDICAL,
      body: Container(
        color: Styles.PRIMARY_COLOR,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 32),
          child: ListView(
            children: [
              SizedBox(
                height: ScreenUtil.instance.setHeight(132),
              ),
              Container(
                  color: Styles.PRIMARY_COLOR,
                  child: Center(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                        Image.network(
                          Strings.DEFAULT_GENRAL_IMAGE,
                          height: ScreenUtil.instance.setHeight(150),
                        ),
                      ]))),
              SizedBox(
                height: ScreenUtil.instance.setHeight(132),
              ),
              CustomTextIconCard(
                visiblePreIcon: true,
                preIcon: Icons.developer_board,
                preIconSize: 28,
                text: Strings.UPLOAD_NEW_PRESCRIPTION,
                textSize: 14,
                visiblePostIcon: true,
                postIcon: Icons.arrow_forward,
                postIconSize: 20,
              ),
              CustomTextIconCard(
                visiblePreIcon: true,
                preIcon: Icons.contacts,
                preIconSize: 28,
                text: Strings.PENDING_REPORTS,
                textSize: 14,
                visiblePostIcon: true,
                postIcon: Icons.arrow_forward,
                postIconSize: 20,
                onTap: _navigateToPendingReports,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
