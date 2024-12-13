import 'package:basketball_court/VIEW/ui_helper/indicator.dart';
import 'package:flutter/material.dart';

class SliverAppBarBANNER extends StatelessWidget {
  const SliverAppBarBANNER({
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: MediaQuery.of(context).size.height * 0.30,
      backgroundColor: Colors.transparent,
      flexibleSpace: Container(
        margin: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.09,
            right: 0,
            bottom: 10,
            left: 0),
        decoration: BoxDecoration(
            color: Colors.blueAccent, borderRadius: BorderRadius.circular(20)),
        child: SizedBox.expand(
          child: Stack(
            children: [
              PageView(
                controller: pageController,
                children: const [
                  FlutterLogo(),
                  FlutterLogo(),
                  FlutterLogo(),
                  FlutterLogo(),
                  FlutterLogo(),
                ],
              ),
              Indicator(pageController: pageController),
            ],
          ),
        ),
      ),
    );
  }
}
