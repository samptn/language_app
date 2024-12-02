part of 'home_bloc.dart';

@immutable
sealed class HomeState extends Equatable {
  @override
  List<Object?> get props => [];
}

final class HomeInitial extends HomeState {
  @override
  List<Object?> get props => [];
}
//Loading 
class HomeLoading extends HomeState {
  @override
  List<Object?> get props => [];
}

class HomeLoaded extends HomeState {
  final List<Language> languages;

  HomeLoaded({
    required this.languages,
  });

  @override
  List<Object?> get props => [
        languages,
      ];
}

//Error
class HomeError extends HomeState {
  final String message;

  HomeError({
    required this.message,
  });

  @override
  List<Object?> get props => [
        message,
      ];
}
