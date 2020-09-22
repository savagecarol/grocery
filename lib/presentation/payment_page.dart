import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery/presentation/custom/cutom_scaffold.dart';
import 'package:grocery/presentation/custom/text_icon_card.dart';
import 'package:grocery/presentation/myaccount.dart';
import 'package:grocery/utils/string_values.dart';
import 'package:grocery/utils/styles.dart';


class PaymentPage extends StatefulWidget {
  static const String routeNamed = 'PaymentPage';
  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {


    _navigatetoPreviouspage() {
     Navigator.of(context).pop();
  }


  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBarText: Strings.SELECT_PAYMENT_METHODS,
      appbarOnTap:_navigatetoPreviouspage ,
      appBarTextSize:16,
      body: Container(
        color: Styles.PRIMARY_COLOR,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 32),
          child: Container(
            color: Styles.PRIMARY_COLOR,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                    Container(
                    child: Text(
                        Strings.CREDT_AND_DEBIT_CARD,
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black.withOpacity(.5),
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600),
                        textAlign: TextAlign.center,
                      ),
                  ),

              
                SizedBox(
                          height: ScreenUtil.instance.setHeight(40),
                        ),


 
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:<Widget>[

                
                  Container(  width: ScreenUtil.instance.setWidth(110),
                  height: ScreenUtil.instance.setHeight(210),
                  decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.white,
            image: DecorationImage(
                image: AssetImage(Strings.DEBIT_CARD_IMAGE), fit: BoxFit.fill)),),






                      Container(  width: ScreenUtil.instance.setWidth(110),
                  height: ScreenUtil.instance.setHeight(245),
                  decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.white,
            image: DecorationImage(
                image: AssetImage(Strings.DEBIT_CARD_IMAGE), fit: BoxFit.fill)),),
                




                   Container(  width: ScreenUtil.instance.setWidth(110),
                  height: ScreenUtil.instance.setHeight(210),
                  decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.white,
            image: DecorationImage(
                image: AssetImage(Strings.DEBIT_CARD_IMAGE), fit: BoxFit.fill)),)

          ]),

            SizedBox(
                          height: ScreenUtil.instance.setHeight(48),
                        ),



            Container(
                    child: Text(
                        Strings.CREDT_AND_DEBIT_CARD,
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black.withOpacity(.5),
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600),
                        textAlign: TextAlign.center,
                      ),
                  ),



                   SizedBox(
                          height: ScreenUtil.instance.setHeight(32),
                        ),

                    CustomTextIconCard(
              visiblePreIcon: true,
              preIcon: Icons.developer_board,
              preIconSize: 30,
              text: Strings.OTHER_UPI_APPS,
              textSize: 16,
              visiblePostIcon: true,
              postIcon: Icons.arrow_forward,
              postIconSize: 25,
            ),
            CustomTextIconCard(
              visiblePreIcon: true,
              preIcon: Icons.contacts,
              preIconSize: 30,
              text: Strings.ADD_DEBIT_CREDIT_CARD,
              textSize: 16,
              visiblePostIcon: true,
              postIcon: Icons.arrow_forward,
              postIconSize: 25,
            ),










                ],
              ),
            ),
        ),
      ),
    );
  }
}
