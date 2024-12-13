import 'package:basketball_court/CONTROLLER/controller.dart';
import 'package:basketball_court/VIEW/ui_helper/appbar_button.dart';
import 'package:basketball_court/VIEW/ui_helper/appbar_textfield.dart';
import 'package:basketball_court/VIEW/ui_helper/gradiant_background.dart';
import 'package:basketball_court/VIEW/ui_helper/info_list.dart';
import 'package:basketball_court/VIEW/ui_helper/sliver_appbar_banner.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(AllCountryController());
    PageController pageController = PageController(
      initialPage: 0,
    );
    return Stack(
      children: [
        const GradientBackGround(),
        SafeArea(
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Stack(
              children: [
                //appbar
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: CustomScrollView(
                    slivers: [
                      SliverAppBarBANNER(pageController: pageController),
                      SliverAppBar(
                        backgroundColor: Colors.transparent,
                        title: Text(
                          'countris'.toUpperCase(),
                          style: const TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w800),
                        ),
                      ),
                      SliverGrid(
                        gridDelegate:
                            const SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 150.0,
                          mainAxisSpacing: 10.0,
                          crossAxisSpacing: 10.0,
                          childAspectRatio: 4.5 / 3,
                        ),
                        delegate: SliverChildBuilderDelegate(
                          (BuildContext context, int index) => index > 4
                              ? const CircleAvatar(
                                  backgroundColor: Colors.white,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.more_horiz),
                                      Text('more'),
                                    ],
                                  ))
                              : flag(controller, index),
                          childCount: 6,
                        ),
                      ),
                      const SliverPadding(padding: EdgeInsets.only(bottom: 30)),
                      SliverAppBar(
                        backgroundColor: Colors.transparent,
                        title: Text(
                          'information about country'.toUpperCase(),
                          style: const TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w800),
                        ),
                      ),
                      InfoList(controller: controller)
                    ],
                  ),
                ),
                appBar(context),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget flag(AllCountryController controller, int index) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white),
      child: Obx(() => controller.isLoading.value
          ? const SizedBox(
              width: 50,
              height: 50,
              child: FlutterLogo(),
            )
          : SizedBox.expand(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image(
                    fit: BoxFit.fill,
                    image:
                        NetworkImage(controller.countryList[index].flags.png)),
              ),
            )),
    );
  }

  Widget appBar(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.symmetric(horizontal: 8),
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.05,
      decoration: const BoxDecoration(),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: AppBarButton(
              icon: const Icon(Icons.ac_unit_sharp),
              ontap: () {},
            ),
          ),
          const Expanded(
            flex: 5,
            child: AppBarTextField(),
          ),
          Expanded(
            flex: 1,
            child: AppBarButton(
              icon: const Icon(Icons.wrong_location),
              ontap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
