import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery/presentation/custom/cutom_scaffold.dart';
import 'package:grocery/presentation/custom/text_icon_card.dart';
import 'package:grocery/presentation/medical.dart';
import 'package:grocery/utils/default.dart';

import 'package:grocery/utils/string_values.dart';
import 'package:grocery/utils/styles.dart';

class Prescription extends StatefulWidget {
  static const String routeNamed = 'Prescription';

  @override
  _PrescriptionState createState() => _PrescriptionState();
}

class _PrescriptionState extends State<Prescription> {
  _navigateToMyAccountePage() {
    Navigator.pushNamed(context, MedicalPage.routeNamed);
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appbarOnTap: _navigateToMyAccountePage,
      appBarText: '',
      body: Builder(builder: (BuildContext context) {
        if (prescription_report == 0) {
          return Container(
            color: Styles.PRIMARY_COLOR,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    Strings.DEFAULT_GENRAL_IMAGE,
                    height: ScreenUtil.instance.setHeight(120),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(32),
                    child: Text(
                      Strings.NO_PENDING_REPORTS,
                      style: TextStyle(
                          fontSize: 26,
                          color: Colors.black.withOpacity(.5),
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          );
        }

        if (prescription_report == 1) {
          return Container(
            color: Styles.PRIMARY_COLOR,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 32,horizontal: 32),
              child: ListView(
                children: [

                     Text(
                Strings.UPLOAD_PRESCRIPTION,
                style: TextStyle(
                    fontSize: 22,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500),
              ),

                  
                      SizedBox(
                height: ScreenUtil.instance.setHeight(64),
              ),
              


                  GestureDetector(
                    onTap: () {},
                    child: Center(
                      child: Container(
                          height: ScreenUtil.instance.setHeight(200),
                          width: ScreenUtil.instance.setHeight(200),
                          decoration: BoxDecoration(boxShadow: [
                            BoxShadow(
                                color: Styles.CUSTOM_SHADOW_COLOR,
                                blurRadius: 15,
                                offset: Offset(0, 2))
                          ],  color: Styles.PRIMARY_COLOR),
                          child: Center(
                            child: IconButton(
                                icon: Icon(Icons.camera_alt,
                                      size:45,
                                  color: Styles.BOTTOMNAVIGATIONBAR_ICON_COLOR,
                                ),
                                onPressed: () {}),
                          ),
                      ),
                    ),),

                


                      SizedBox(
                height: ScreenUtil.instance.setHeight(70),
              ),
              
              CustomTextIconCard(
                text: Strings.COLLECT_BLOOD_SAMPLE_FROM_HOME,
                textSize: 12,
              ),
              CustomTextIconCard(
                text: Strings.COLLECT_BOOOD_SAMPLE_FROM_CENTRE,
                textSize: 12,
              ),


              
                      SizedBox(
                height: ScreenUtil.instance.setHeight(48),
              ),

                 CustomTextIconCard(
                text: Strings.SUBMIT,
                defaultColor: Styles.BOTTOMNAVIGATIONBAR_ICON_COLOR,
                textSize: 18,
                visiblePostIcon: true,
                postIcon: Icons.arrow_forward,
                postIconSize: 22,
                postIconColor: Styles.PRIMARY_COLOR,
                otherContainer: true,
              ),
                
                ],
              ),
            ),
          );
        }
      }),
    );
  }
}
