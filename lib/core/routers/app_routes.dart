import 'package:get/get.dart';
import 'package:ubx/presentation/bindings/home_bindings.dart';
import 'package:ubx/presentation/screens/detail_screen.dart';
import 'package:ubx/presentation/screens/home_screen.dart';

class AppRoutes{
  AppRoutes._();
  static final appScreen = [
    GetPage(name: HomeScreen.routeName, page:() =>  const HomeScreen(), binding: HomeBinding()),
    GetPage(name: DetailScreen.routeName, page:() =>   const DetailScreen(),binding: HomeBinding()),
  ];
}