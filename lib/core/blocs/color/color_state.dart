part of 'color_bloc.dart';

abstract class ColorState {}

class ColorInitial extends ColorState {}

class ColorPickedState extends ColorState {
  final Color color;
  final Color currentColor;
  ColorPickedState({
    required this.color,
    required this.currentColor,
  });
}
