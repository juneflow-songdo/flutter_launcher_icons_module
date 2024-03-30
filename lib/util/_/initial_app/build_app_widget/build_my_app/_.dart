import 'package:flutter/material.dart';
import '../../../../../main.dart';
import '../../../../config/_/router/_/_.dart';
import '../../ready_functions/before_material_app/_.dart';
import '../build_material_app/_.dart';


Widget Function() buildMyApp(BuildContext context) {
  Widget Function() materialAppBuilder = MaterialAppBuilder(context);

  return () => materialAppBuilder();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    readyBeforeMaterialApp(context);

    return buildMyApp(context)();
  }
}
