import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:grocery/presentation/custom/textfield.dart';
import 'package:grocery/utils/string_values.dart';

class SearchPage extends StatefulWidget {
  SearchPage({Key key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
  return Container(
      child: ListView(
        children: [
             CustomTextField(
          padding: 0,
          hintText: Strings.SEARCH_FOR_AN_ITEM,
          hintTextSize: 18,
          icon: Icons.search,
          preIconSize: 40,
          isPrefixIcon: true,
        ),
        ],
      ),

    );
  }
}