

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:untitled4/Repository/Api/jios_api.dart';
import 'package:untitled4/Repository/ModelClass/Jios_Model.dart';












part 'jios_event.dart';
part 'jios_state.dart';

class JiosBloc extends Bloc<JiosEvent, JiosState> {
  JiosApi jiosApi=JiosApi();
  late Jios_Model jios_Model;
  JiosBloc() : super(JiosInitial()) {

    on<JiosEvent>((event, emit) async{

      emit(JiosblocLoading());
      try{

        jios_Model =await jiosApi.getJios();
        emit(JiosblocLoaded());
      }catch(e){
        print(e);
        emit(JiosblocError());
      }
      // TODO: implement event handler
    });
  }
}
