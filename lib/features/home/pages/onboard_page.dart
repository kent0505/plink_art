import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../core/config/app_colors.dart';
import '../../../core/db/prefs.dart';
import '../../../core/widgets/cuper_button.dart';
import '../../../core/widgets/custom_scaffold.dart';

class OnboardPage extends StatelessWidget {
  const OnboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Stack(
        children: [
          Center(
            child: Container(
              height: 500,
              width: 340,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
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
                  width: 300,
                  height: 460,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                    gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xff180B36),
                        Color(0xff1A0C38),
                      ],
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: -80,
                        left: 0,
                        right: 0,
                        child: SvgPicture.asset('assets/onboard.svg'),
                      ),
                      Positioned(
                        left: 20,
                        top: 150,
                        child: Text(
                          'Select your favorite\npicture from the\ngallery and start\nyour dot art\njourney.'
                              .toUpperCase(),
                          maxLines: 5,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: Fonts.main,
                            height: 1.5,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 160,
                        right: 15,
                        child: SvgPicture.asset('assets/onboard1.svg'),
                      ),
                      Positioned(
                        left: 30,
                        bottom: 60,
                        child: SvgPicture.asset('assets/onboard2.svg'),
                      ),
                      Positioned(
                        right: 10,
                        bottom: 60,
                        child: Text(
                          'start creating\nyour own dot art\nmasterpiece'
                              .toUpperCase(),
                          maxLines: 5,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: Fonts.main,
                            height: 1.5,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const Positioned(
            bottom: 50,
            left: 0,
            right: 0,
            child: Center(
              child: _OkButton(),
            ),
          ),
        ],
      ),
    );
  }
}

class _OkButton extends StatelessWidget {
  const _OkButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CuperButton(
      onPressed: () async {
        await saveOnboard().then((value) {
          if (context.mounted) {
            context.go('/home');
          }
        });
      },
      child: Container(
        height: 68,
        width: 228,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(68),
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xffE9F514),
              Color(0xffED5732),
            ],
          ),
          boxShadow: const [
            BoxShadow(
              color: Color(0xffEB7B10),
              blurRadius: 3,
              spreadRadius: 3,
            ),
          ],
        ),
        child: Center(
          child: Container(
            height: 60,
            width: 220,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(60),
              gradient: const LinearGradient(
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
                height: 48,
                width: 210,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60),
                  gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xff2C1153),
                      Color(0xff53018C),
                    ],
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: -40,
                      bottom: 10,
                      left: 0,
                      right: 0,
                      child: Transform.scale(
                        scale: 3,
                        child: SvgPicture.asset('assets/ok.svg'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
