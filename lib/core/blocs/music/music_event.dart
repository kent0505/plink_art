part of 'music_bloc.dart';

abstract class MusicEvent {}

class StartMusicEvent extends MusicEvent {}

class ChangeVolumeEvent extends MusicEvent {
  final double volume;
  ChangeVolumeEvent({required this.volume});
}

class PauseMusicEvent extends MusicEvent {}

class ResumeMusicEvent extends MusicEvent {}
