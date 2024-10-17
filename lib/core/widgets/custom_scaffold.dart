import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  const CustomScaffold({
    super.key,
    required this.body,
    this.id = 2,
  });

  final Widget body;
  final int id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            color: const Color(0xff2E1156),
          ),
          // SvgPicture.asset(
          //   'assets/bg$id.svg',
          //   width: double.infinity,
          //   height: double.infinity,
          //   fit: BoxFit.cover,
          // ),
          Image.asset(
            'assets/bg$id.png',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          body,
        ],
      ),
    );
  }
}
