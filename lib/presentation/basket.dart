import 'package:flutter/material.dart';
import 'package:grocery/presentation/custom/cutom_scaffold.dart';
import 'package:grocery/utils/string_values.dart';
class Basket extends StatefulWidget {


  @override
  _BasketState createState() => _BasketState();
}

class _BasketState extends State<Basket> {
  @override
  





  Widget build(BuildContext context) {
    return CustomScaffold(
            appBarText: Strings.BASKET,
            appBarTextSize:16,
             body:Container()
    );
  }
}