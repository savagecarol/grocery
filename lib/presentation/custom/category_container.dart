import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery/utils/styles.dart';

class CustomCategoryContainer extends StatelessWidget {
final String image;
final String name;
  CustomCategoryContainer({
    this.image,
    this.name,
  });


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Column(
        children: [
               Container(
                   decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Styles.CUSTOM_SHADOW_COLOR,
                  blurRadius: 10,
                  offset: Offset(1, 1))
            ]),
            
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Center(child: Container(
                child: Image.network(image)
            ),),
          ),
            
            ),
               SizedBox(
          height: ScreenUtil.instance.setHeight(8),
        ),


          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                child:Text(
              name,
            style: TextStyle(
                fontSize: 18,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w500),
          ),
              ),

              Container(
                child: Icon(Icons.arrow_forward),
              )
            ],
          )


        ],

      )),

    );

  }
}