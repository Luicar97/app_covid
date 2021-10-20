import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:worki/app/bindings/home_binding.dart';
import 'package:worki/app/ui/pages/home_page/home_page.dart';

import 'app/routes/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      getPages: Routes.routes,
      initialRoute: '/',
      initialBinding: HomeBinding(),
    );
  }
}
