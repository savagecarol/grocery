import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery/utils/string_values.dart';
import 'package:grocery/utils/styles.dart';

class CustomCart extends StatelessWidget {
  final bool onlyUp;
  CustomCart({
    this.onlyUp=false,
  });

        _blockWidgdet(String s, String t) {
            return Padding(
              padding:const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
              child: Column(
                children: [
                 
                         Container( child:Text(
                          s,
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w500),                         
                        ),),

                        SizedBox(
                        height:ScreenUtil.instance.setHeight(5)
                        ),



                          Container( child:Text(
                          t,
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600),
                         
                        ),),

                ],
              ),
            );
        }
  @override
  Widget build(BuildContext context) {
    return Container(
       decoration: BoxDecoration(
                         color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Styles.CUSTOM_SHADOW_COLOR,
                              blurRadius: 10,
                              offset: Offset(0, 2))
                        ]),
   
      padding:const EdgeInsets.symmetric(vertical:4),
      child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
                _blockWidgdet(Strings.ITEMS,'rs.12'),
                        Container(
                                  color: Colors.black,
                                  width: ScreenUtil.instance.setWidth(1),
                                  height:  ScreenUtil.instance.setHeight(40),
                                ),  

               _blockWidgdet(Strings.SAVINGS,'rs.12'),
                                  Container(
                                  color: Colors.black,
                                   width: ScreenUtil.instance.setWidth(1),
                                  height:  ScreenUtil.instance.setHeight(40),
                                ),  
                    
                               _blockWidgdet(Strings.TOTAL,'rs.12'),
                
                            ],
                
                      ),
                    );
                  }         
}
