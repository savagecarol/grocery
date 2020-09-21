import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery/presentation/custom/category_container.dart';
import 'package:grocery/presentation/custom/cutom_scaffold.dart';
import 'package:grocery/presentation/custom/menu_card.dart';
import 'package:grocery/presentation/custom/textfield.dart';
import 'package:grocery/presentation/vendor.dart';
import 'package:grocery/utils/default.dart';
import 'package:grocery/utils/string_values.dart';
import 'package:grocery/utils/styles.dart';

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
        color: Styles.PRIMARY_COLOR,
        child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          children: [
            ListView(
              children: [
                SizedBox(
                  height: ScreenUtil.instance.setHeight(16),
                ),
                CustomTextField(
                  padding: 24,
                  hintText: Strings.SEARCH_FOR_AN_ITEM,
                  hintTextSize: 16,
                  icon: Icons.search,
                  isPrefixIcon: true,
                ),
                SizedBox(
                  height: ScreenUtil.instance.setHeight(16),
                ),
                Container(
                  height: ScreenUtil.instance.setHeight(50),
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Container(
                            margin: EdgeInsets.only(
                                left: ScreenUtil.instance.setWidth(10),
                                right: ScreenUtil.instance.setHeight(10)),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 2,
                                    color:
                                        Styles.BOTTOMNAVIGATIONBAR_ICON_COLOR),
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 12),
                              child: Center(
                                  child: Text('genrral',
                                      style: TextStyle(
                                          color: Colors.black.withOpacity(0.7),
                                          fontFamily: 'Montserrat',
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500))),
                            ));
                      }),
                ),
                SizedBox(
                  height: ScreenUtil.instance.setHeight(16),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Container(
                    height: 2 * ScreenUtil.instance.setHeight(300),
                    width:
                        ScreenUtil.instance.setWidth(ScreenUtil.instance.width),
                    child: GridView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: 5,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                          childAspectRatio: .7,
                        ),
                        itemBuilder: (context, index) {
                          return Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 2),
                              child: CustomMenuCard());
                        }),
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: ScreenUtil.instance.setHeight(20),
                 right: ScreenUtil.instance.setHeight(20),
              child: FloatingActionButton(onPressed: () {},backgroundColor: Styles.ICON_COLOR,
              child:Icon
              (Icons.shopping_basket,size: 30,),),
            ),
          ],
        ),
      ),
    );
  }
}
