import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ubx/core/utils/constants.dart';
import 'package:ubx/presentation/controllers/home_controller.dart';
import 'package:ubx/presentation/widgets/app_loading.dart';

class DetailScreen extends GetView<HomeController> {
  const DetailScreen({Key? key}) : super(key: key);
  static const routeName = "/detail";

  Widget _infoRow({String? title, String? description, Color? color, TextStyle? style}) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Row(
        children: [
          Text("$title :" ?? "0"),
          const SizedBox(
            width: 10,
          ),
          Text(
            "$description" ?? "0",
            style: style ?? TextStyle(color: color ?? Colors.black),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Center(
          child: controller.obx(
            (state) {
              return Card(
                elevation: 3,
                child: ListTile(
                  title: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          controller.coinName,
                          style: const TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          controller.coinSymbol,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        _infoRow(
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                          ),
                            title: Constants.kUSD,
                            description:
                                "${controller.coinMarket[0].quotes?.USD?.price}" ??
                                    "0"),
                        _infoRow(
                            title: Constants.kHigh,
                            description: "+ ${controller.coinDetails?[0].high}",
                            color: Colors.green),
                        _infoRow(
                            title: Constants.kLow,
                            description:
                            "- ${controller.coinDetails?[0].low}",
                            color: Colors.red),
                        _infoRow(
                            title: Constants.kOpen,
                            description:
                            "+${controller.coinDetails?[0].open}"),
                        _infoRow(
                            title: Constants.kClose,
                            description:
                            "+${controller.coinDetails?[0].close}"),

                        _infoRow(
                            title: Constants.kVolume,
                            description:
                            "+${controller.coinDetails?[0].volume}"),

                        _infoRow(
                            title: Constants.kMarketCap,
                            description:
                            "+${controller.coinDetails?[0].marketCap}"),
                      ],
                    ),
                  ),
                ),
              );
            },
            onLoading: const AppLoading(),
            onEmpty: const Center(
              child: Text(Constants.kDataNotFound),
            ),
            onError: (error) => Center(
              child: Text(error!),
            ),
          ),
        ),
      ),
    );
  }
}
