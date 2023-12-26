part of 'spotify_bloc.dart';

@immutable
abstract class SpotifyState {}

class SpotifyInitial extends SpotifyState {}
class SpotifyblocLoading extends SpotifyState {}
class SpotifyblocLoaded extends SpotifyState {}
class SpotifyblocError extends SpotifyState {}