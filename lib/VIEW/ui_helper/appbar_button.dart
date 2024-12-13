// ignore: must_be_immutable
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

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
