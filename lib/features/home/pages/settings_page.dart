import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../core/blocs/music/music_bloc.dart';
import '../../../core/widgets/cuper_button.dart';
import '../../../core/widgets/text_r.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  ValueNotifier<double> volume = ValueNotifier(1);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 340,
        width: 340,
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
            height: 300,
            width: 300,
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
                  left: 0,
                  right: 0,
                  top: -110,
                  child: SvgPicture.asset('assets/settings.svg'),
                ),
                const Positioned(
                  top: 90,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: TextMain('Music', fontSize: 30),
                  ),
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  top: 146,
                  child: Center(
                    child: Container(
                      height: 20,
                      width: 190,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
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
                            color: Color(0xffDCF700),
                            blurRadius: 4,
                          ),
                        ],
                      ),
                      child: SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          inactiveTrackColor: Colors.transparent,
                          activeTrackColor: Colors.transparent,
                          thumbColor: Colors.white,
                          trackHeight: 50.0,
                          thumbShape: const RoundSliderThumbShape(
                            enabledThumbRadius: 25,
                          ),
                        ),
                        child: Slider(
                          min: 0.0,
                          max: 1.0,
                          value: volume.value,
                          onChanged: (value) async {
                            volume.value = value;
                            context
                                .read<MusicBloc>()
                                .add(ChangeVolumeEvent(volume: value));
                            setState(() {});
                          },
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 35,
                  left: 0,
                  right: 0,
                  child: Row(
                    children: [
                      const Spacer(),
                      _Button(
                        title: 'Terms of use',
                        onPressed: () {},
                      ),
                      const Spacer(),
                      _Button(
                        title: 'Privacy Policy',
                        onPressed: () {
                          context.push('/privacy');
                        },
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Button extends StatelessWidget {
  const _Button({
    required this.title,
    required this.onPressed,
  });

  final String title;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return CuperButton(
      onPressed: onPressed,
      minSize: 32,
      child: Container(
        height: 32,
        width: 130,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
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
              color: Color(0xffDCF700),
              blurRadius: 4,
            ),
          ],
        ),
        child: Center(
          child: TextMain(
            title,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
