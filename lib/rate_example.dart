import 'package:flutter/material.dart';
import 'package:rate_my_app/rate_my_app.dart';

class RateAppInitWidget extends StatefulWidget {
  const RateAppInitWidget({Key? key}) : super(key: key);

  @override
  _RateAppInitWidgetState createState() => _RateAppInitWidgetState();
}

class _RateAppInitWidgetState extends State<RateAppInitWidget> {
  static const playStoreId = 'com.emprestabemmelhor.br';
  static const appstoreId = 'com.apple.mobilesafari';

  final RateMyApp rateMyApp = RateMyApp(
    googlePlayIdentifier: playStoreId,
    appStoreIdentifier: appstoreId,
    minDays: 0,
    minLaunches: 2,
    remindDays: 1,
    remindLaunches: 1,
  );

  @override
  void initState() {
    super.initState();
    rateMyApp.init().then(
          (_) => () {
            rateMyApp.conditions.forEach((condition) {
              if (condition is DebuggableCondition) {
                print(condition.valuesAsString);
              }
            });

            if (rateMyApp.shouldOpenDialog) {
              rateMyApp.showStarRateDialog(context);
            }
          },
        );
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
