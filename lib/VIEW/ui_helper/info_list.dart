import 'package:basketball_court/CONTROLLER/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class InfoList extends StatelessWidget {
  const InfoList({
    super.key,
    required this.controller,
  });

  final AllCountryController controller;

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Obx(() => controller.isLoading_country.value
              ? const SizedBox(
                  width: 10,
                  height: 10,
                  child: LinearProgressIndicator(),
                )
              : ListTile(
                  title: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(controller.countryList[index].name.official),
                      Text(
                        controller.countryList[index].population.toString(),
                        style: const TextStyle(color: Colors.red),
                      ),
                    ],
                  ),
                  leading: CircleAvatar(
                    maxRadius: 50,
                    backgroundImage:
                        NetworkImage(controller.countryList[index].flags.png),
                  ),
                ));
        },
        separatorBuilder: (context, index) {
          return const Divider();
        });
  }
}
