import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/blocs/game/game_bloc.dart';
import '../../../core/config/app_colors.dart';
import '../../../core/widgets/cuper_button.dart';
import '../../../core/widgets/text_r.dart';

class ColorWidget extends StatelessWidget {
  const ColorWidget({super.key, required this.id});

  final int id;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 20),
        BlocBuilder<GameBloc, GameState>(
          builder: (context, state) {
            return Container(
              height: 78,
              width: 78,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(context.read<GameBloc>().selectedGame.color),
              ),
            );
          },
        ),
        const SizedBox(width: 20),
        Expanded(
          child: Wrap(
            runSpacing: 18,
            spacing: 20,
            children: [
              ...List.generate(
                getGameColors(id).length,
                (index) {
                  return _ColorButton(getGameColors(id)[index]);
                },
              ),
              if (id == 0) const _AddColor(),
            ],
          ),
        ),
      ],
    );
  }
}

class _ColorButton extends StatelessWidget {
  const _ColorButton(this.color);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return CuperButton(
      onPressed: () {
        context.read<GameBloc>().add(ChangeColorEvent(color: color.value));
      },
      minSize: 30,
      child: Container(
        height: 30,
        width: 30,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
        ),
      ),
    );
  }
}

class _AddColor extends StatelessWidget {
  const _AddColor();

  @override
  Widget build(BuildContext context) {
    return CuperButton(
      onPressed: () {
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          backgroundColor: const Color(0xffB3B3B3),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(10),
            ),
          ),
          builder: (context) {
            return Container(
              height: 660,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(10),
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 17),
                  const TextMain(
                    'Colors',
                    fontSize: 17,
                    color: Colors.black,
                  ),
                  const Spacer(),
                  const Row(
                    children: [],
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      const SizedBox(width: 20),
                      Container(
                        height: 78,
                        width: 78,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(
                            context.read<GameBloc>().selectedGame.color,
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        child: Wrap(
                          runSpacing: 18,
                          spacing: 20,
                          children: List.generate(
                            getGameColors(0).length,
                            (index) {
                              return _ColorButton(getGameColors(0)[index]);
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                ],
              ),
            );
          },
        );
      },
      minSize: 30,
      child: Container(
        height: 30,
        width: 30,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: const Color(0xff787880).withOpacity(0.16),
        ),
        child: Center(
          child: SvgPicture.asset('assets/add.svg'),
        ),
      ),
    );
  }
}
