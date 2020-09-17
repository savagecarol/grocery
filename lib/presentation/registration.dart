import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery/presentation/custom/text_icon_card.dart';
import 'package:grocery/presentation/custom/textfield.dart';
import 'package:grocery/presentation/custom/up_container.dart';
import 'package:grocery/utils/string_values.dart';
import 'package:grocery/utils/styles.dart';
class LoginPage extends StatefulWidget {
static const String routeNamed = 'LoginPage';

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
            body:Container(
              color: Styles.REGISTER_BACKAGROUND_COLOR,
              child: ListView(
                children:[

                    CustomUpContainer(image:Strings.IMAGE),


                        Padding(
                          padding: const EdgeInsets.only(left:24,right:24,top:40),
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
                   padding: const EdgeInsets.symmetric(horizontal:16),
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
              ),
                 ),


                
                






                            ],
                          ),
                        ),


                ]


              ),
        ),
      ),
    );
  }
}