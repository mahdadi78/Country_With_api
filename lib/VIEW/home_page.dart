import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const GradientBackGround(),
        SafeArea(
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Stack(
              children: [
                //appbar
                CustomScrollView(
                  slivers: [
                    SliverAppBar(
                      expandedHeight: MediaQuery.of(context).size.height * 0.20,
                      backgroundColor: Colors.transparent,
                      flexibleSpace:
                          const FlexibleSpaceBar(background: Placeholder()),
                    ),
                  ],
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
