import 'package:flutter/material.dart';
import 'package:grocery/utils/styles.dart';

class RowCardField extends StatelessWidget {
  final Function onSaved;
  final Function onChanged;
  RowCardField({
    this.onSaved,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(   border: Border.all(color: Colors.black38),
        color: Styles.PRIMARY_COLOR, borderRadius: BorderRadius.circular(3),),
      child:Row(
        children:<Widget>[
          Container(
             decoration: BoxDecoration(color: Styles.ICON_COLOR, borderRadius:BorderRadius.only(
              topLeft: Radius.circular(3),
              bottomLeft: Radius.circular(3),
            ),),
          
               child: Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 5.8),
                 child: Center(child:Text('-',style:TextStyle(
                                fontFamily: 'Montserrat',
                                color:Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w500))),
               ), 
          ),Padding(
            padding: const EdgeInsets.symmetric(horizontal:10),
            child: Container(
                color: Colors.white,
                 child: Center(child:Text('0',style:TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 16,
                              fontWeight: FontWeight.w500))), 
            ),
          ),Container(
            decoration: BoxDecoration(color:Styles.ICON_COLOR, borderRadius:BorderRadius.only(
              topRight: Radius.circular(3),
              bottomRight: Radius.circular(3),
            ),),
       
               child: Padding(
                 padding: const EdgeInsets.symmetric(horizontal:4),
                 child: Center(child:Text('+',style:TextStyle(
                                fontFamily: 'Montserrat',
                                color:Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w500))),
               )
          )
        ],
      ) 
    );
  }
}
