import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery/utils/styles.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  final String hintText;
  final double hintTextSize;
  final String initialValue;
  final double width;
  final TextInputType textInputType;
  final Function onSaved;
  final Function onChanged;
  final Function validator;
  final IconData icon;
  final bool isPrefixIcon;
  final double preIconSize;
  final double padding;
  CustomTextField({
    this.labelText,
    this.hintText,
    this.preIconSize = 30,
    this.hintTextSize = 16,
    this.initialValue,
    this.width,
    this.onSaved,
    this.onChanged,
    this.validator,
    this.textInputType = TextInputType.text,
    this.icon = Icons.location_on,
    this.isPrefixIcon = false,
    this.padding = 20,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding),
      child: Container(
        width: ScreenUtil.instance
            .setWidth(ScreenUtil.instance.setWidth(ScreenUtil.instance.width)),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Styles.CUSTOM_SHADOW_COLOR,
                  blurRadius: 20,
                  offset: Offset(2, 4))
            ]),
        child: Padding(
          padding:
              (isPrefixIcon) ? EdgeInsets.all(0) : EdgeInsets.only(left: 16),
          child: TextFormField(
              onSaved: onSaved,
              onChanged: onChanged,
              keyboardType: textInputType,
              initialValue: initialValue,
              style: TextStyle(fontSize: 20),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: hintText,
                  labelText: labelText,
                  prefixIcon: isPrefixIcon
                      ? Icon(
                          icon,
                          color: Styles.BOTTOMNAVIGATIONBAR_BOTTOM_BORDER_COLOR,
                          size: preIconSize,
                        )
                      : null,
                  hintStyle: TextStyle(
                      fontSize: hintTextSize,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w300))),
        ),
      ),
    );
  }
}