import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery/utils/styles.dart';

class CustomTextIconCard extends StatelessWidget {
  final String text;
  final double textSize;
  final IconData postIcon;
  final double postIconSize;
  final bool visiblePostIcon;
  final IconData preIcon;
  final double preIconSize;
  final bool visiblePreIcon;
  final Color preIconColor;
  final double sizelabelText;
  final Function onTap;
 
  CustomTextIconCard(
      {this.onTap,
        this.text,
      this.textSize=19,
      this.postIcon,
      this.postIconSize = 20,
      this.visiblePostIcon = false,
      this.preIcon,
      this.preIconSize = 24,
      this.visiblePreIcon = false,
      this.sizelabelText = 20,
   
      this.preIconColor=Styles.ICON_COLOR});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 1),
        child: InkWell(
              onTap: onTap ,
                  child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              height: ScreenUtil.instance.setHeight(70),
              margin: EdgeInsets.only(bottom: ScreenUtil.instance.setHeight(24)),
              decoration: BoxDecoration(
                color:Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                        color: Styles.CUSTOM_SHADOW_COLOR,
                        blurRadius: 15,
                        offset: Offset(0, 2))
                  ]),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                           Container(
                          child: ( visiblePreIcon == true)
                              ? Container(
                                  child: Icon(
                                    preIcon,
                                    size: preIconSize,
                                    color: preIconColor,
                                  ),
                                )
                              : Container(),
                        ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        
                          Container(
                                  child:Text(
                                   text,
                                    style: TextStyle(
                                     fontSize: 19,
                                  color: Colors.black,
                                fontFamily: 'Montserrat',
                                   fontWeight: FontWeight.w500),
                                ),
                        ),
                            Container(
                              child:( visiblePreIcon == true)? SizedBox(
                              width: ScreenUtil.instance.setWidth(10), ):Container()
                                  ),



                             Container(
                      child: (visiblePostIcon == true)
                          ? Container(
                              child: Icon(
                                postIcon,
                                size: postIconSize,
                              ),
                            )
                          : Container(),
                    ),



                      ],
                    ),

                  ],

                ),
              )),
        ));
  }
}
