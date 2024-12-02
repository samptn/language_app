import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '/data/mock_data.dart';
import '/models/language.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<GetHomeLanguage>(_onGetHomeLanguage);
  }

  Future<void> _onGetHomeLanguage(
      GetHomeLanguage event, Emitter<HomeState> emit) async {

    emit(HomeLoading());

    try {
      var languages =
          popularLanguages.map((e) => Language.fromJson(e)).toList();
      await Future.delayed(const Duration(seconds: 1));
      emit(HomeLoaded(languages: [...languages]));
    } catch (_) {
      emit(HomeError(message: 'Error loading languages'));

    }
  }
}
