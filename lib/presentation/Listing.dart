import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery/presentation/custom/cutom_scaffold.dart';
import 'package:grocery/presentation/custom/text_icon_card.dart';
import 'package:grocery/presentation/lister.dart';
import 'package:grocery/presentation/vendor.dart';
import 'package:grocery/utils/default.dart';
import 'package:grocery/utils/string_values.dart';
import 'package:grocery/utils/styles.dart';

class ListingPage extends StatefulWidget {
  static const String routeNamed = 'listing';

  @override
  _ListingPageState createState() => _ListingPageState();
}

class _ListingPageState extends State<ListingPage > {
  _navigateToVendorPage() {
  
    Navigator.pushNamed(context, VendorPage.routeNamed);
  }

  _navigateToPrescription() {
    prescription_report = 1;
    Navigator.pushNamed(context, Lister.routeNamed);
  }

  _navigateToReport() {
        prescription_report = 0;
    Navigator.pushNamed(context, Lister.routeNamed);
  }

  String appbarText;


    search(int categorys) {
    if (categorys == 0) {
      appbarText = Strings.GROCERY;
    } else if (categorys == 1) {
      appbarText = Strings.MEDICINE;
    } else if (categorys == 2) {
      appbarText = Strings.FOOD;
    } else if (categorys == 3) {
      appbarText = Strings.BOOK;
    } else if (categorys == 4) {
      appbarText = Strings.LIQUID;
    }
  }

  void initState() {
    search(categorys);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appbarOnTap: _navigateToVendorPage,
      appBarText: appbarText,
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
                text: Strings.UPLOAD_NEW_LIST,
                textSize: 14,
                visiblePostIcon: true,
                postIcon: Icons.arrow_forward,
                postIconSize: 20,
                onTap: _navigateToPrescription,
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
                onTap: _navigateToReport,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
