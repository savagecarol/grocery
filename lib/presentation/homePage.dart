import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery/model/popular.dart';
import 'package:grocery/presentation/custom/scroll_card.dart';
import 'package:grocery/presentation/custom/textfield.dart';
import 'package:grocery/utils/string_values.dart';
import 'package:grocery/utils/styles.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

List<PopularModel> popular = List<PopularModel>();
  @override
  void initState() {
    popular = getpopular();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
    ListView(
      children: [
        SizedBox(
          height: ScreenUtil.instance.setHeight(32),
        ),
        Padding(padding:  const EdgeInsets.symmetric(horizontal: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
             Text(Strings.HOME,style: TextStyle(
                    fontSize: 22,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w900),),
            
             Container(
                  height:ScreenUtil.instance.setHeight(65),
                  width: ScreenUtil.instance.setWidth(65),
                  decoration: BoxDecoration(
                      boxShadow: [
                   BoxShadow(
                  color:Colors.grey,
                  blurRadius: 30,
                  offset: Offset(2, 4))],
                    shape: BoxShape.circle,
                      color: Colors.white,
                      image: DecorationImage(
                          image: NetworkImage(Strings.DEFAULT_USER_IMAGE), fit: BoxFit.fill)),

                ),


                     ],
              
        ),
        ), 
         SizedBox(
          height: ScreenUtil.instance.setHeight(24),
        ),    
        CustomTextField(
                padding: 24,
                hintText: Strings.SELECT_DELIEVERY_LOCATION,
                hintTextSize: 16,
                icon: Icons.location_on,
                isPrefixIcon: true,
        ),

         SizedBox(
          height: ScreenUtil.instance.setHeight(24),
        ),  


                    Padding(
                        padding:  const EdgeInsets.symmetric(horizontal: 24),
                         child: Text(Strings.OFFERS,style: TextStyle(
                    fontSize: 24,
                    color: Colors.black.withOpacity(0.5),
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500),),
                       ),
                     SizedBox(
                  height: ScreenUtil.instance.setHeight(24),
                        ),  

           Container(
            height: ScreenUtil.instance.setHeight(200),
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: popular.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                       CustomScrollContainerField(
                         image: popular[index].image,
                       ),
                          SizedBox(
                  height: ScreenUtil.instance.setHeight(5),
                        ),  
                         Padding(
                           padding: const EdgeInsets.symmetric(horizontal:8.0),
                           child: Text(popular[index].name,style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400),),
                         ),
                          

                       Padding(
                      padding: const EdgeInsets.symmetric(horizontal:8.0),
                         child: Text(popular[index].address,style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400),),
                       ),

                      ],
                    ),
                  );




                }),
          ),  

                    
                     SizedBox(
          height: ScreenUtil.instance.setHeight(24),
        ),  

            
                         Padding(
                        padding:  const EdgeInsets.symmetric(horizontal: 24),
                           child: Text(Strings.CATEGORIES,style: TextStyle(
                    fontSize: 24,
                    color: Colors.black.withOpacity(0.5),
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500),),
                         ),
            

      ],
    ) );
  }
}

