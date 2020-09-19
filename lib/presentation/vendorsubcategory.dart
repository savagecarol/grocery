import 'package:flutter/material.dart';
import 'package:grocery/presentation/custom/cutom_scaffold.dart';
import 'package:grocery/presentation/vendor.dart';
import 'package:grocery/utils/default.dart';
import 'package:grocery/utils/string_values.dart';

class SubCategory extends StatefulWidget {
  static const String routeNamed = 'SubCategory';

  @override
  _SubCategoryState createState() => _SubCategoryState();
}

class _SubCategoryState extends State<SubCategory> {
  String appBarText;

  search(int categorys) {
    if (categorys == 0) {
      appBarText = Strings.GROCERY_SHOP_NAME;
    } else if (categorys == 1) {
        appBarText = Strings.MEDICINE_SHOP_NAME;

    } else if (categorys == 2) {
      appBarText = Strings.FOOD_SHOP_NAME;
    } else if (categorys == 3) {
      appBarText = Strings.BOOK_SHOP_NAME;
    } else if (categorys == 4) {
        appBarText = Strings.LIQUID_SHOP_NAME;
    }
  }

  @override
  void initState() {
    search(categorys);
    super.initState();
  }

  _navigateToVendorPage() {
    Navigator.pushNamed(context, VendorPage.routeNamed);
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBarText: appBarText,
      appbarOnTap: _navigateToVendorPage,
      appBarTextSize: 16,
      body: Container(
        child: ListView(
          children: [
            
          ],
        ),
      ),
    );
  }
}
