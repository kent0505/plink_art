import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import 'cuper_button.dart';

class IcoButton extends StatelessWidget {
  const IcoButton({
    super.key,
    this.back = false,
    this.onPressed,
  });

  final bool back;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return CuperButton(
      onPressed: back
          ? () {
              context.pop();
            }
          : onPressed,
      minSize: 30,
      child: Container(
        height: 30,
        width: 30,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xffE9F514),
              Color(0xffED5732),
            ],
          ),
          boxShadow: [
            BoxShadow(
              blurRadius: 3,
              spreadRadius: 3,
              color: Color(0xffEB7B10),
            ),
          ],
        ),
        child: Center(
          child: Container(
            height: 28,
            width: 28,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xffF501E0),
                  Color(0xff53018C),
                ],
              ),
            ),
            child: Center(
              child: Container(
                height: 22,
                width: 22,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xff53018C),
                      Color(0xffF501E0),
                    ],
                  ),
                ),
                child: Center(
                  child: SvgPicture.asset(
                    back ? 'assets/back.svg' : 'assets/clear.svg',
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
