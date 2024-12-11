import 'package:flutter/gestures.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController(
      initialPage: 2,
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
                      //!..............................................................
                      SliverAppBar(
                        backgroundColor: Colors.transparent,
                        title: Text(
                          'Populous countries'.toUpperCase(),
                          style: const TextStyle(fontSize: 15),
                        ),
                      ),
                      SliverGrid(
                        gridDelegate:
                            const SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 150.0,
                          mainAxisSpacing: 10.0,
                          crossAxisSpacing: 10.0,
                          childAspectRatio: 1,
                        ),
                        delegate: SliverChildBuilderDelegate(
                          (BuildContext context, int index) {
                            return Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white),
                              child: Text('Grid Item $index'),
                            );
                          },
                          childCount: 6,
                        ),
                      ),
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

class Indicator extends StatelessWidget {
  const Indicator({
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: SmoothPageIndicator(
            controller: pageController, // PageController
            count: 5,
            effect: const WormEffect(
                dotWidth: 8,
                dotHeight: 8,
                activeDotColor: Colors.white,
                dotColor: Colors.white30), // your preferred effect
            onDotClicked: (index) {}),
      ),
    );
  }
}

class GradientBackGround extends StatelessWidget {
  const GradientBackGround({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color.fromARGB(255, 194, 213, 229), Colors.white])),
    );
  }
}

class AppBarTextField extends StatelessWidget {
  const AppBarTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search',
          hintStyle: TextStyle(color: Colors.grey),
          prefixIcon: Icon(
            Icons.search,
            color: Colors.grey,
          ),
          filled: true,
          fillColor: Colors.white,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(40)),
            borderSide: BorderSide(width: 1, color: Colors.white),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(40)),
            borderSide: BorderSide(width: 1, color: Colors.white),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(40)),
            borderSide: BorderSide(width: 1, color: Colors.white),
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(40)),
              borderSide: BorderSide(
                width: 1,
              )),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(40)),
              borderSide: BorderSide(width: 1, color: Colors.white)),
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(40)),
              borderSide: BorderSide(width: 1, color: Colors.white)),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class AppBarButton extends StatelessWidget {
  Icon icon;
  GestureCancelCallback ontap;
  AppBarButton({super.key, required this.icon, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: CircleAvatar(
        radius: double.infinity,
        backgroundColor: Colors.white,
        child: icon,
      ),
    );
  }
}
