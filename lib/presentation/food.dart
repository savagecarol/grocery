import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery/models/nearyou.dart';
import 'package:grocery/models/popular_food.dart';
import 'package:grocery/presentation/custom/cutom_scaffold.dart';
import 'package:grocery/presentation/custom/near_card.dart';
import 'package:grocery/presentation/custom/popular_card.dart';
import 'package:grocery/presentation/custom/textfield.dart';
import 'package:grocery/presentation/splashpage.dart';
import 'package:grocery/utils/default.dart';
import 'package:grocery/utils/string_values.dart';
import 'package:grocery/utils/styles.dart';

class FoodPage extends StatefulWidget {
  static const String routeNamed = 'Food';

  @override
  FoodPageState createState() => FoodPageState();
}

class FoodPageState extends State<FoodPage> {
  ScrollController _controller;
  var _current = 0;
  var newslist;
  List<PopularFoodModel> popular = List<PopularFoodModel>();
  List<NearYouModel> near = List<NearYouModel>();
  bool moveup = false;
  bool boxshadowcolor = false;
  @override
  void initState() {
    _controller = ScrollController();
    _controller.addListener(_scrollListener);
    popular = getpopularfood();
    near = getnear();
    super.initState();
  }


  // _navigateToMenubyPopularCard() {
  //   menutype = true;
  //   Navigator.pushNamed(context, MenuListPage.routeNamed);
  // }

  // _navigateToMenubyNearCard() {
  //   menutype = false;
  //   Navigator.pushNamed(context, MenuListPage.routeNamed);
  // }

  _scrollListener() {
    if (_controller.offset > _controller.position.minScrollExtent &&
        !_controller.position.outOfRange) {
      setState(() {
        if (moveup == false) moveup = true;
      });
    } else {
      setState(() {
        if (moveup == true) moveup = false;
      });
    }
  }

  _navigateToHomePage() {
    currentPage = 0;
    Navigator.pushNamed(context, SplashPage.routeNamed);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
        // appBarText: Strings.FOOD,
        // appbarOnTap: _navigateToHomePage,
        // appBarTextSize: 19,
        body: Container(
          color: Styles.PRIMARY_COLOR,
          child: Stack(
            fit: StackFit.expand,
            alignment: Alignment.center,
            children: <Widget>[
              ListView(
                controller: _controller,
                children: <Widget>[
                  Row(
              children: [
                 SizedBox(
                    width: ScreenUtil.instance.setWidth(8),
                  ),
                IconButton(
                  icon: new Icon(
                    Icons.arrow_back,
                    color: Styles.ICON_COLOR,
                    size: 28,
                  ),
                  onPressed: _navigateToHomePage
                ),
                Text(
              Strings.FOOD,
                  style: TextStyle(
                      fontSize: 19,
                      color: Colors.black,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),



                  SizedBox(
                    height: 88,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                Strings.POPULAR,
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.black.withOpacity(0.5),
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500),
              ),
                  ),
                  SizedBox(
                    height: ScreenUtil.instance.setHeight(24),
                  ),
                  Container(
                    height: ScreenUtil.instance.setHeight(220),
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: popular.length,
                        itemBuilder: (context, index) {
                          return CustomPopularCard(
                              image: popular[index].image,
                              name: popular[index].name,
                              address: popular[index].address,
                              rating: popular[index].rating,
                              time: popular[index].time,
                              boxs: boxshadowcolor);
                        }),
                  ),
                  SizedBox(
                    height: ScreenUtil.instance.setHeight(24),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child:Text(
                Strings.NEAR_YOU,
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.black.withOpacity(0.5),
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500),
              ),
                  ),
                  SizedBox(
                    height: ScreenUtil.instance.setHeight(24),
                  ),
                  Container(
                    height: ScreenUtil.instance.setHeight(650),
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: near.length,
                        itemBuilder: (context, index) {
                          return CustomNearCard(
                            image: near[index].image,
                            name: near[index].name,
                            address: near[index].address,
                            rating: near[index].rating,
                            time: near[index].time,
                          );
                        }),
                  ),
                ],
              ),
              Positioned(
                top:(moveup) ? 0:ScreenUtil.instance.setHeight(68),
                child: CustomTextField(
                  padding: 0,
                  size: moveup,
                  hintTextSize: 14,
                  hintText: Strings.FIND_FOOD_OR_RESTAURANT,
                  icon: Icons.location_on,
                  isPrefixIcon: true,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
