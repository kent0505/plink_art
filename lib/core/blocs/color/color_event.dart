part of 'color_bloc.dart';

abstract class ColorEvent {}

class SelectColorEvent extends ColorEvent {
  final Color color;
  final bool current;
  SelectColorEvent({
    required this.color,
    this.current = false,
  });
}

class ChangeOpacityEvent extends ColorEvent {
  final double opacity;
  ChangeOpacityEvent({required this.opacity});
}
