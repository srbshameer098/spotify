part of 'spotify_bloc.dart';

@immutable
abstract class SpotifyEvent {}
class FetchSpotify extends SpotifyEvent{
  final String message;

  FetchSpotify({required this.message});
}