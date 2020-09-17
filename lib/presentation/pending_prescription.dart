import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery/models/historymodel.dart';
import 'package:grocery/presentation/custom/cutom_scaffold.dart';
import 'package:grocery/presentation/medical.dart';

import 'package:grocery/utils/string_values.dart';
import 'package:grocery/utils/styles.dart';

class PendingReports extends StatefulWidget {
  static const String routeNamed = 'PendingReports';

  @override
  _PendingReportsState createState() => _PendingReportsState();
}

class _PendingReportsState extends State<PendingReports> {
  _navigateToMyAccountePage() {
    Navigator.pushNamed(context, MedicalPage.routeNamed);
  }


  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appbarOnTap: _navigateToMyAccountePage,
      appBarText: '',
      body: Container(
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
            ),                
                 
              );
            }
          }
