import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ubx/core/utils/constants.dart';
import 'package:ubx/presentation/controllers/home_controller.dart';
import 'package:ubx/presentation/widgets/app_loading.dart';

class HomeScreen extends GetView<HomeController>{
  const HomeScreen({Key? key}) : super(key: key);
   static const routeName = "/home";
   Widget _coinsList(){
     return ListView.builder(itemCount: controller.coinsList?.getRange(0, 30).length ?? 0,
         itemBuilder: (context, i) {
           var coin = controller.coinsList[i];
           return InkWell(
             onTap: () => controller.navigateToDetail(coin.id, coin.name, coin.symbol),
             child: Card(
               elevation: 3,
               child: ListTile(
                 contentPadding: const EdgeInsets.all(16),
                 leading: Text("${i+1}"),
                 title: Text(coin.name ?? ""),
                 subtitle: Text(coin.symbol ?? ""),
               ),
             ),
           );
         }
     );
   }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: controller.obx((state) {
          return _coinsList();
        },
        onLoading: const AppLoading(),
          onEmpty: const Center(child: Text(Constants.kDataNotFound),),
          onError: (error) => Center(child: Text(error!),)
        ),
      ),
    );
  }
}
