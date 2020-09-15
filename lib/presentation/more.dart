import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery/presentation/custom/text_icon_card.dart';
import 'package:grocery/presentation/myaccount.dart';
import 'package:grocery/utils/string_values.dart';

class More extends StatefulWidget {


  @override
  _MoreState createState() => _MoreState();
}

class _MoreState extends State<More> {

    _navigateToMyAccountPage() {
    Navigator.pushNamed(context, MyAccount.routeNamed);
  }




  @override
  Widget build(BuildContext context) {
    return ListView(
        children: [
        SizedBox(
          height: ScreenUtil.instance.setHeight(64),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Text(
            Strings.MORE_OPTIONS,
            style: TextStyle(
                fontSize: 22,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w900),
          )),
               SizedBox(
          height: ScreenUtil.instance.setHeight(32),
        ),


    SingleChildScrollView(
      child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child:Column(
              children: [

                CustomTextIconCard(

                  visiblePreIcon: true,
                   preIcon: Icons.account_box,
                   preIconSize: 30,

                   text: Strings.MY_ACCOUNT,
                   textSize: 19,

                   visiblePostIcon: true,
                   postIcon: Icons.arrow_forward,
                   postIconSize: 25,

                   onTap: _navigateToMyAccountPage,
                ),



                    CustomTextIconCard(

                  visiblePreIcon: true,
                   preIcon: Icons.share,
                   preIconSize: 30,

                   text: Strings.INVITE,
                   textSize: 19,

                   visiblePostIcon: true,
                   postIcon: Icons.arrow_forward,
                   postIconSize: 25,
                ),



    CustomTextIconCard(

                  visiblePreIcon: true,
                   preIcon: Icons.note,
                   preIconSize: 30,

                   text: Strings.PRIVACY_POLICY,
                   textSize: 19,

                   visiblePostIcon: true,
                   postIcon: Icons.arrow_forward,
                   postIconSize: 25,
                ),





    CustomTextIconCard(

                  visiblePreIcon: true,
                   preIcon: Icons.question_answer,
                   preIconSize: 30,

                   text: Strings.FAQS,
                   textSize: 19,

                   visiblePostIcon: true,
                   postIcon: Icons.arrow_forward,
                   postIconSize: 25,
                ),




    CustomTextIconCard(

                  visiblePreIcon: true,
                   preIcon: Icons.contacts,
                   preIconSize: 30,

                   text: Strings.CONTACT_US,
                   textSize: 19,

                   visiblePostIcon: true,
                   postIcon: Icons.arrow_forward,
                   postIconSize: 25,
                ),




    CustomTextIconCard(

                  visiblePreIcon: true,
                   preIcon: Icons.open_in_browser,
                   preIconSize: 30,

                   text: Strings.LOG_OUT,
                   textSize: 19,

                   visiblePostIcon: true,
                   postIcon: Icons.arrow_forward,
                   postIconSize: 25,
                ),






              
              
              
              
              ],
            )
            ),
    ),
    
      


              
              
              
              ]
    );
  }
}