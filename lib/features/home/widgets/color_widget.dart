import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/blocs/bloc/game_bloc.dart';
import '../../../core/config/app_colors.dart';
import '../../../core/widgets/cuper_button.dart';

class ColorWidget extends StatelessWidget {
  const ColorWidget({super.key, required this.id});

  final int id;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 26),
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
        const SizedBox(width: 26),
        Expanded(
          child: Wrap(
            runSpacing: 18,
            spacing: 26,
            children: List.generate(
              getGameColors(id).length,
              (index) {
                return _ColorButton(getGameColors(id)[index]);
              },
            ),
          ),
        ),
        const SizedBox(width: 10),
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
