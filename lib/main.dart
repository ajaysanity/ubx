import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ubx/core/routers/app_routes.dart';
import 'package:ubx/presentation/screens/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const UbxApp());
}

class UbxApp extends StatelessWidget {
  const UbxApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      navigatorKey: Get.key,
      getPages: AppRoutes.appScreen,
      initialRoute: HomeScreen.routeName,
    );
  }
}
