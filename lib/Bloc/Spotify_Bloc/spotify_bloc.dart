import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../Repository/Api/spotify_api.dart';
import '../../Repository/ModelClass/spotify_model.dart';

part 'spotify_event.dart';
part 'spotify_state.dart';

class SpotifyBloc extends Bloc<SpotifyEvent, SpotifyState> {
  SpotifyApi spotifyApi=SpotifyApi();
  late SpotifyModel spotifyModel;
  SpotifyBloc() : super(SpotifyInitial()) {
    on<FetchSpotify>((event, emit) async{
      emit(SpotifyblocLoading());
      try{

        spotifyModel =await spotifyApi.getSpotify(event.message);
        emit(SpotifyblocLoaded());
      }catch(e){
        print(e);
        emit(SpotifyblocError());
      }
      // TODO: implement event handler
    });
  }
}
