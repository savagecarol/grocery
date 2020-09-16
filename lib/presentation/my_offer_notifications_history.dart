import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery/models/historymodel.dart';
import 'package:grocery/presentation/custom/cutom_scaffold.dart';
import 'package:grocery/presentation/myaccount.dart';
import 'package:grocery/utils/default.dart';
import 'package:grocery/utils/string_values.dart';
import 'package:grocery/utils/styles.dart';

class OfferNotifyHistoryPage extends StatefulWidget {
  static const String routeNamed = 'offernotifyhistorypage';

  @override
  _OfferNotifyHistoryPageState createState() => _OfferNotifyHistoryPageState();
}

class _OfferNotifyHistoryPageState extends State<OfferNotifyHistoryPage> {
  _navigateToMyAccountePage() {
    Navigator.pushNamed(context, MyAccount.routeNamed);
  }

  List<HistoryModel> history = List<HistoryModel>();

  @override
  void initState() {
    if (offer_notify_history == 2) {
      history = gethistory();
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appbarOnTap: _navigateToMyAccountePage,
      appBarText:
          (offer_notify_history == 2 && history.length != 0) ? 'History' : '',
      body: Builder(
        builder: (BuildContext context) {
          if (offer_notify_history == 0) {
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
                        Strings.YOU_DONT_HAVE_ANY_NEW_OFFERRS,
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
          } else if (offer_notify_history == 1) {
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
                        Strings.NO_NOTIFICATIONS,
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
          } else if (offer_notify_history == 2) {
            if (history.length == 0) {
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
                          Strings.NO_HISTORY,
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
            } else {
              return Container(
                 color: Styles.PRIMARY_COLOR,
                child: ListView(
                  children: [
                        Container(
                          color: Styles.PRIMARY_COLOR,
                           padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 30),
          height: ScreenUtil.instance.setHeight( (history.length).toDouble() * 123),
          child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: history.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 1,horizontal: 2),
                    child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
               
                margin: EdgeInsets.only(bottom: ScreenUtil.instance.setHeight(16),top: ScreenUtil.instance.setHeight(16)),
                decoration: BoxDecoration(
                    color:Styles.PRIMARY_COLOR,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                            color: Styles.CUSTOM_SHADOW_COLOR,
                            blurRadius: 10,
                            offset: Offset(0, 2))
                      ]),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [

                                  Container(
                                     child: Text(
                          Strings.DATE,
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w500),
                          textAlign: TextAlign.center,
                        ),
                                  ),


                                      Container(
                                     child: Text(
                            history[index].date,
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w500),
                          textAlign: TextAlign.center,
                        ),
                                  )


                                ],

                              ),
                               SizedBox(
                                        height: ScreenUtil.instance.setHeight(8),
                                ),

                               Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [

                                 Container(
                                     child: Text(
                          Strings.ORDER_NUMBER,
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w500),
                          textAlign: TextAlign.center,
                        ),
                                  ),
                                      Container(
                                     child: Text(
                          history[index].orderNumber,
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w500),
                          textAlign: TextAlign.center,
                        ),
                                  )
                                ],
                              ),
                                  ],
                            ),
                            ),
                  );
                        }),
                      ),

                  ],

                ),
              );
            }
          }
        },
      ),
    );
  }
}
