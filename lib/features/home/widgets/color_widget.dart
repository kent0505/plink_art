import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../core/blocs/color/color_bloc.dart';
import '../../../core/blocs/game/game_bloc.dart';
import '../../../core/config/app_colors.dart';
import '../../../core/utils.dart';
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
  const _ColorButton(
    this.color, {
    this.picker = false,
  });

  final Color color;
  final bool picker;

  @override
  Widget build(BuildContext context) {
    return CuperButton(
      onPressed: () {
        if (picker) {
          context
              .read<ColorBloc>()
              .add(SelectColorEvent(color: color, current: true));
        } else {
          context.read<GameBloc>().add(ChangeColorEvent(color: color.value));
        }
      },
      minSize: 30,
      child: Container(
        height: 30,
        width: 30,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
        ),
        child: BlocBuilder<ColorBloc, ColorState>(
          builder: (context, state) {
            return state is ColorPickedState && state.currentColor == color
                ? Center(
                    child: Container(
                      height: 24,
                      width: 24,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: color,
                        border: Border.all(
                          width: 2,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                : Container();
          },
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
              child: Stack(
                children: [
                  Column(
                    children: [
                      const SizedBox(height: 17),
                      const TextMain(
                        'Colors',
                        fontSize: 17,
                        color: Colors.black,
                      ),
                      const Spacer(),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: const SizedBox(
                          height: 300,
                          width: 360,
                          child: Column(
                            children: [
                              _PickersRow(1),
                              _PickersRow(2),
                              _PickersRow(3),
                              _PickersRow(4),
                              _PickersRow(5),
                              _PickersRow(6),
                              _PickersRow(7),
                              _PickersRow(8),
                              _PickersRow(9),
                              _PickersRow(10),
                            ],
                          ),
                        ),
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          const SizedBox(width: 20),
                          BlocBuilder<ColorBloc, ColorState>(
                            builder: (context, state) {
                              return Container(
                                height: 78,
                                width: 78,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: state is ColorPickedState
                                      ? state.color
                                      : Color(
                                          context
                                              .read<GameBloc>()
                                              .selectedGame
                                              .color,
                                        ),
                                ),
                              );
                            },
                          ),
                          const SizedBox(width: 20),
                          BlocBuilder<ColorBloc, ColorState>(
                            builder: (context, state) {
                              return Expanded(
                                child: Wrap(
                                  runSpacing: 18,
                                  spacing: 20,
                                  children: List.generate(
                                    getGameColors(0).length,
                                    (index) {
                                      return _ColorButton(
                                        getGameColors(0)[index],
                                        picker: true,
                                      );
                                    },
                                  ),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                      const SizedBox(height: 40),
                    ],
                  ),
                  Positioned(
                    top: 13,
                    right: 16,
                    child: CuperButton(
                      onPressed: () {
                        context.pop();
                      },
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: const Color(0xff7f7f7f).withOpacity(0.5),
                        ),
                        child: const Center(
                          child: TextMain(
                            'X',
                            fontSize: 16,
                            color: Color(0xff3d3d3d),
                          ),
                        ),
                      ),
                    ),
                  ),
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

class _Picker extends StatelessWidget {
  const _Picker({required this.color});

  final Color color;

  @override
  Widget build(BuildContext context) {
    return CuperButton(
      onPressed: () {
        context.read<ColorBloc>().add(SelectColorEvent(color: color));
      },
      minSize: 30,
      child: BlocBuilder<ColorBloc, ColorState>(
        builder: (context, state) {
          return Container(
            height: getWidth(context) < 380 ? 26 : 30,
            width: getWidth(context) < 380 ? 26 : 30,
            decoration: BoxDecoration(
              color: color,
              border: state is ColorPickedState && color == state.color
                  ? Border.all(
                      width: 3,
                      color: Colors.white,
                    )
                  : null,
            ),
          );
        },
      ),
    );
  }
}

class _PickersRow extends StatelessWidget {
  const _PickersRow(this.id);

  final int id;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _Picker(color: getPickerColors(id)[0]),
        _Picker(color: getPickerColors(id)[1]),
        _Picker(color: getPickerColors(id)[2]),
        _Picker(color: getPickerColors(id)[3]),
        _Picker(color: getPickerColors(id)[4]),
        _Picker(color: getPickerColors(id)[5]),
        _Picker(color: getPickerColors(id)[6]),
        _Picker(color: getPickerColors(id)[7]),
        _Picker(color: getPickerColors(id)[8]),
        _Picker(color: getPickerColors(id)[9]),
        _Picker(color: getPickerColors(id)[10]),
        _Picker(color: getPickerColors(id)[11]),
      ],
    );
  }
}
