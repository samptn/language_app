import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'alphabets_event.dart';
part 'alphabets_state.dart';

class AlphabetsBloc extends Bloc<AlphabetsEvent, AlphabetsState> {
  AlphabetsBloc() : super(AlphabetsInitial()) {
    on<AlphabetsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
