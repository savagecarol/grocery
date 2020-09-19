import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery/presentation/custom/text_icon_card.dart';
import 'package:grocery/presentation/custom/textfield.dart';
import 'package:grocery/presentation/custom/up_container.dart';
import 'package:grocery/presentation/splashpage.dart';
import 'package:grocery/utils/default.dart';
import 'package:grocery/utils/string_values.dart';
import 'package:grocery/utils/styles.dart';

class RegistrationOTPLoginPage extends StatefulWidget {
  static const String routeNamed = 'LoginPage';

  @override
  _RegistrationOTPLoginPageState createState() =>
      _RegistrationOTPLoginPageState();
}

class _RegistrationOTPLoginPageState extends State<RegistrationOTPLoginPage> {
  int login_OTP_detail = 0;

  _navigateToHomePage() {
    currentPage = 0;
    Navigator.pushNamed(context, SplashPage.routeNamed);
  }

  _navigateToOTPPage() {
    setState(() {
      login_OTP_detail = 1;
    });
  }

  _navigateToDetailPage() {
    setState(() {
      login_OTP_detail = 2;
    });
  }

  _otPWidget() {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            //
            color: Styles.PRIMARY_COLOR,
            width: 1,
          ),
        ),
      ),
      width: ScreenUtil.instance.setWidth(30),
      child: TextField(
          keyboardType: TextInputType.number,
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
              fillColor: Colors.white,
              border: InputBorder.none,
              hintStyle: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Montserrat',
                  color: Styles.PRIMARY_COLOR,
                  fontWeight: FontWeight.w300))),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(body: Builder(
        builder: (BuildContext context) {
          if (login_OTP_detail == 0) {
            return Container(
              color: Styles.REGISTER_BACKAGROUND_COLOR,
              child: ListView(children: [
                CustomUpContainer(
                  image: Strings.IMAGE,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 24, right: 24, top: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 48),
                          child: Text(
                            Strings.ENTER_YOUR_MOBILE_NUMBER,
                            style: TextStyle(
                                fontSize: 14,
                                color: Styles.PRIMARY_COLOR,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w500),
                          )),
                      SizedBox(
                        height: ScreenUtil.instance.setHeight(16),
                      ),
                      CustomTextField(
                        hintTextSize: 12,
                        hintText: Strings.DEFAULT_NUMBER,
                        onRegPage: true,
                        isPrefixIcon: false,
                      ),
                      SizedBox(
                        height: ScreenUtil.instance.setHeight(32),
                      ),
                      SizedBox(
                        height: ScreenUtil.instance.setHeight(16),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: CustomTextIconCard(
                          text: '',
                          defaultColor: Styles.BOTTOMNAVIGATIONBAR_ICON_COLOR,
                          textSize: 18,
                          onRegpage: true,
                          visiblePostIcon: true,
                          postIcon: Icons.arrow_forward,
                          postIconSize: 22,
                          postIconColor: Styles.PRIMARY_COLOR,
                          otherContainer: true,
                          onTap: _navigateToOTPPage,
                        ),
                      ),
                      SizedBox(
                        height: ScreenUtil.instance.setHeight(16),
                      ),
                      Center(
                          child: Container(
                              height: ScreenUtil.instance.setHeight(200),
                              width: ScreenUtil.instance.setHeight(200),
                              child: Image.network(Strings.GENRAL_PNG_IMAGE)))
                    ],
                  ),
                ),
              ]),
            );
          } else if (login_OTP_detail == 1) {
            return Container(
              color: Styles.REGISTER_BACKAGROUND_COLOR,
              child: ListView(children: [
                CustomUpContainer(
                  image: Strings.IMAGE,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 24, right: 24, top: 48),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        Strings.ENTER_OTP,
                        style: TextStyle(
                            fontSize: 15,
                            color: Styles.PRIMARY_COLOR,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: ScreenUtil.instance.setHeight(8),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 32),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          _otPWidget(),
                               _otPWidget(),
                                    _otPWidget(),
                                         _otPWidget(),
                                              _otPWidget(),
                                                   _otPWidget(),
                          ],
                        ),
                      ),

                       SizedBox(
                        height: ScreenUtil.instance.setHeight(24),
                      ),


                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            Strings.RESEND_OTP,
                            style: TextStyle(
                                fontSize: 14,
                                color: Styles.PRIMARY_COLOR,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: ScreenUtil.instance.setHeight(220),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: CustomTextIconCard(
                          text: Strings.CONFIRM,
                          defaultColor: Styles.BOTTOMNAVIGATIONBAR_ICON_COLOR,
                          textSize: 18,
                          onRegpage: true,
                          visiblePostIcon: true,
                          postIcon: Icons.arrow_forward,
                          postIconSize: 22,
                          postIconColor: Styles.PRIMARY_COLOR,
                          otherContainer: true,
                          onTap: _navigateToDetailPage,
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
            );
          } else if (login_OTP_detail == 2) {
            return Container(
              color: Styles.REGISTER_BACKAGROUND_COLOR,
              child: ListView(children: [
                CustomUpContainer(
                  image: Strings.IMAGE,
                  skipOption: true,
                  onTap: _navigateToHomePage,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 24, right: 24, top: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 48),
                          child: Text(
                            Strings.NAME,
                            style: TextStyle(
                                fontSize: 14,
                                color: Styles.PRIMARY_COLOR,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w500),
                          )),
                      SizedBox(
                        height: ScreenUtil.instance.setHeight(16),
                      ),
                      CustomTextField(
                        hintTextSize: 12,
                        hintText: Strings.DEFAULT_USER,
                        onRegPage: true,
                        isPrefixIcon: false,
                      ),
                      SizedBox(
                        height: ScreenUtil.instance.setHeight(16),
                      ),
                      Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 48),
                          child: Text(
                            Strings.Email,
                            style: TextStyle(
                                fontSize: 14,
                                color: Styles.PRIMARY_COLOR,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w500),
                          )),
                      SizedBox(
                        height: ScreenUtil.instance.setHeight(16),
                      ),
                      CustomTextField(
                        hintTextSize: 12,
                        hintText: Strings.DEFAUTLT_EMAIL,
                        onRegPage: true,
                        isPrefixIcon: false,
                      ),
                      SizedBox(
                        height: ScreenUtil.instance.setHeight(128),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: CustomTextIconCard(
                          text: Strings.SUBMIT,
                          defaultColor: Styles.BOTTOMNAVIGATIONBAR_ICON_COLOR,
                          textSize: 18,
                          onRegpage: true,
                          visiblePostIcon: true,
                          postIcon: Icons.arrow_forward,
                          postIconSize: 22,
                          postIconColor: Styles.PRIMARY_COLOR,
                          otherContainer: true,
                          onTap: _navigateToHomePage,
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
            );
          }
        },
      )),
    );
  }
}
