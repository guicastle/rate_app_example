// import 'package:flutter/material.dart';
// import 'package:rate_my_app/rate_my_app.dart';

// import 'content.dart';

// void main() {
//   WidgetsFlutterBinding.ensureInitialized();
//   runApp(const _RateMyAppTestApp());
// }

// class _RateMyAppTestApp extends StatefulWidget {
//   const _RateMyAppTestApp();

//   @override
//   State<StatefulWidget> createState() => _RateMyAppTestAppState();
// }

// class _RateMyAppTestAppState extends State<_RateMyAppTestApp> {
//   WidgetBuilder builder = buildProgressIndicator;

//   static Widget buildProgressIndicator(BuildContext context) =>
//       const Center(child: CircularProgressIndicator());

//   @override
//   Widget build(BuildContext context) => MaterialApp(
//         home: Scaffold(
//           appBar: AppBar(
//             title: const Text('Rate my app !'),
//           ),
//           body: RateMyAppBuilder(
//             builder: builder,
//             onInitialized: (context, rateMyApp) {
//               setState(() =>
//                   builder = (context) => ContentWidget(rateMyApp: rateMyApp));
//               rateMyApp.conditions.forEach((condition) {
//                 if (condition is DebuggableCondition) {
//                   print(condition
//                       .valuesAsString); // We iterate through our list of conditions and we print all debuggable ones.
//                 }
//               });

//               if (rateMyApp.shouldOpenDialog) {
//                 rateMyApp.showRateDialog(context);
//               }
//             },
//           ),
//         ),
//       );
// }
