part of 'game_bloc.dart';

abstract class GameEvent {}

class LoadGameEvent extends GameEvent {
  final int id;
  LoadGameEvent({required this.id});
}

class SelectGameEvent extends GameEvent {
  final Game game;
  SelectGameEvent({required this.game});
}

class ChangeColorEvent extends GameEvent {
  final int color;
  ChangeColorEvent({required this.color});
}

class SaveGameEvent extends GameEvent {
  final int id;
  SaveGameEvent({required this.id});
}
