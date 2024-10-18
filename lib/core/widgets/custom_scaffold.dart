import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  const CustomScaffold({
    super.key,
    required this.body,
    this.id = 2,
    this.game = false,
  });

  final Widget body;
  final int id;
  final bool game;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          if (game)
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xff11092B),
                    Color(0xff2E1156),
                    Color(0xff11092B),
                  ],
                ),
              ),
            )
          else ...[
            Container(
              height: double.infinity,
              width: double.infinity,
              color: const Color(0xff2E1156),
            ),
            Image.asset(
              'assets/bg$id.png',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
          ],
          body,
        ],
      ),
    );
  }
}
