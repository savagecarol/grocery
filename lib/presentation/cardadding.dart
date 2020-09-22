import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery/presentation/custom/cutom_scaffold.dart';
import 'package:grocery/presentation/custom/text_icon_card.dart';
import 'package:grocery/presentation/custom/textfield.dart';
import 'package:grocery/utils/default.dart';
import 'package:grocery/utils/string_values.dart';
import 'package:grocery/utils/styles.dart';

class CardAdding extends StatefulWidget {
  static const String routeNamed = 'cardadding';

  @override
  _CardAddingState createState() => _CardAddingState();
}

class _CardAddingState extends State<CardAdding> {
  _navigatetoPreviouspage() {
    Navigator.of(context).pop();
  }

  _text(String s) {
    return Container(
      child: Text(
        s,
        style: TextStyle(
            fontSize: 12,
            color: Colors.black.withOpacity(.7),
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w600),
        textAlign: TextAlign.center,
      ),
    );
  }
    var checkBoxValue=false;
  @override
  Widget build(BuildContext context) {

        return CustomScaffold(
          appBarText:
              (currentPage == 2) ? Strings.PAYMENT : Strings.ADD_DEBIT_CREDIT_CARD,
          appbarOnTap: _navigatetoPreviouspage,
          appBarTextSize: 16,
          body: Container(
              color: Styles.PRIMARY_COLOR,
              child: Padding(
                padding: EdgeInsets.only(top: 16, bottom: 8, left: 32, right: 32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _text(Strings.CARD_NUMBER),

                          SizedBox(
                          height: ScreenUtil.instance.setHeight(8),
                        ),

                        CustomTextField(
                          padding: 0,
                          hintText: Strings.CARD_NUMBER,
                             hintTextSize: 14,
                        
                                ),
                       SizedBox(
                          height: ScreenUtil.instance.setHeight(16),
                        ),

  
                    Row(
                    
                      children: [

                        Container(
                          width: ScreenUtil.instance.setWidth(150),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                                  _text(Strings.EXPIRY_DATE),
                                  
                          SizedBox(
                          height: ScreenUtil.instance.setHeight(8),
                        ),

                                     CustomTextField(
                            padding: 0,
                            hintText: Strings.EXPIRY_DATE,
                               hintTextSize: 14,
                          
                                  ),

                            ],
                          ),
                        ),

                        SizedBox(
                          width: ScreenUtil.instance.setWidth(20),
                        ),


                         Container(
                             width: ScreenUtil.instance.setWidth(100),
                           child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                                 _text(Strings.CVV),

                                            
                          SizedBox(
                          height: ScreenUtil.instance.setHeight(8),
                        ),

                                    CustomTextField(
                            padding: 0,
                            hintText: Strings.CVV,
                               hintTextSize: 14,
                        
                                  ),

                            ],
                        ),
                         ),                        
                      ],
                    ),

                      SizedBox(
                          height: ScreenUtil.instance.setHeight(16),
                        ),

                       _text(Strings.CARDHOLDER_NAME),

                        SizedBox(
                          height: ScreenUtil.instance.setHeight(8),
                        ),

                            CustomTextField(
                          padding: 0,
                          hintText: Strings.CARDHOLDER_NAME,
                             hintTextSize: 14,
                        
                                ),
                      
                       SizedBox(
                          height: ScreenUtil.instance.setHeight(16),
                        ),

  
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                       new Checkbox(value: checkBoxValue,
                      activeColor: Styles.ICON_COLOR,
                    onChanged:(bool newValue){
                       setState(() {
                         checkBoxValue = newValue;
                   });
                  }),
                    _text(Strings.SAVED_CARD),                    
                  ],
                ),     

                CustomTextIconCard(
                  text: Strings.CONFIRM,
                  defaultColor: Styles.BOTTOMNAVIGATIONBAR_ICON_COLOR,
                  textSize: 16,
                  onRegpage: true,
                  visiblePostIcon: true,
                  postIcon: Icons.arrow_forward,
                  postIconSize: 22,
                  postIconColor: Styles.PRIMARY_COLOR,
                  otherContainer: true,
                ),
                SizedBox(
                  height: ScreenUtil.instance.setHeight(16),
                ),
                Container(
                  child: Text(
                    Strings.SAVED_CARDS,
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black.withOpacity(.5),
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: ScreenUtil.instance.setHeight(32),
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        width: ScreenUtil.instance.setWidth(110),
                        height: ScreenUtil.instance.setHeight(210),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                            image: DecorationImage(
                                image: AssetImage(Strings.DEBIT_CARD_IMAGE),
                                fit: BoxFit.fill)),
                      ),
                      Container(
                        width: ScreenUtil.instance.setWidth(110),
                        height: ScreenUtil.instance.setHeight(245),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                            image: DecorationImage(
                                image: AssetImage(Strings.DEBIT_CARD_IMAGE),
                                fit: BoxFit.fill)),
                      ),
                      Container(
                        width: ScreenUtil.instance.setWidth(110),
                        height: ScreenUtil.instance.setHeight(210),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                            image: DecorationImage(
                                image: AssetImage(Strings.DEBIT_CARD_IMAGE),
                                fit: BoxFit.fill)),
                      )
                    ]),
              ],
            ),
          )),
    );
  }
}
