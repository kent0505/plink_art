import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plink_art/core/config/app_colors.dart';

import '../../utils.dart';

part 'color_event.dart';
part 'color_state.dart';

class ColorBloc extends Bloc<ColorEvent, ColorState> {
  Color selectedColor = const Color(0xffffffff);
  Color currentColor = const Color(0xffffffff);

  ColorBloc() : super(ColorInitial()) {
    on<SelectColorEvent>((event, emit) {
      logger(event.color);
      if (event.current) {
        currentColor = event.color;
        emit(ColorPickedState(
          color: selectedColor,
          currentColor: currentColor,
        ));
      } else {
        selectedColor = event.color;
        for (Color color in getGameColors(0)) {
          if (currentColor == color) {
            color = selectedColor;
          }
        }
        emit(ColorPickedState(
          color: selectedColor,
          currentColor: currentColor,
        ));
      }
    });

    on<ChangeOpacityEvent>((event, emit) {
      emit(ColorPickedState(
        color: selectedColor,
        currentColor: currentColor,
      ));
    });
  }
}
