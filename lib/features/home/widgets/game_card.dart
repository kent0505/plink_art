import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../core/widgets/cuper_button.dart';

class GameCard extends StatelessWidget {
  const GameCard(this.id, {super.key});

  final int id;

  @override
  Widget build(BuildContext context) {
    return CuperButton(
      onPressed: () {
        context.push('/game', extra: id);
      },
      child: Container(
        height: 168,
        width: 168,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff9001D9),
              Color(0xff5702E3),
            ],
          ),
        ),
        child: Center(
          child: Container(
            height: 164,
            width: 164,
            padding: EdgeInsets.all(id == 0 ? 0 : 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xff180B36),
                  Color(0xff1A0C38),
                ],
              ),
            ),
            child: id == 0
                ? Stack(
                    children: [
                      Positioned(
                        top: -24,
                        left: 10,
                        child: SvgPicture.asset(
                          'assets/title2.svg',
                          height: 114,
                        ),
                      ),
                      SvgPicture.asset('assets/choose3.svg'),
                    ],
                  )
                : Center(
                    child: Image.asset(
                      'assets/game$id.png',
                      height: double.infinity,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Image.asset(
                          'assets/game$id.jpg',
                          height: double.infinity,
                          fit: BoxFit.cover,
                        );
                      },
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}
