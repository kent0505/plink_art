import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../core/db/prefs.dart';
import '../../../core/widgets/custom_scaffold.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  bool loading = false;

  void load() async {
    await getData().then((onboard) {
      Future.delayed(Duration.zero, () {
        setState(() {
          loading = true;
        });
      });
      Future.delayed(const Duration(seconds: 2), () {
        if (mounted) {
          if (onboard) {
            context.go('/onboard');
          } else {
            context.go('/home');
          }
        }
      });
    });
  }

  @override
  void initState() {
    super.initState();
    load();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      id: 1,
      body: Center(
        child: Container(
          height: 30,
          width: 253,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
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
                blurRadius: 3,
                spreadRadius: 3,
                color: Color(0xffEB7B10),
              ),
            ],
          ),
          child: Center(
            child: Container(
              height: 22,
              width: 245,
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(23),
                gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xffF501E0),
                    Color(0xff53018C),
                  ],
                ),
              ),
              child: Row(
                children: [
                  AnimatedContainer(
                    duration: const Duration(seconds: 2),
                    height: 18,
                    width: loading ? 241 : 0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(19),
                      gradient: const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xffE9F514),
                          Color(0xffED5732),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
