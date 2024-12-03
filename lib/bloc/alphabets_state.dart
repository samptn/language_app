part of 'alphabets_bloc.dart';

sealed class AlphabetsState extends Equatable {
  const AlphabetsState();
  
  @override
  List<Object> get props => [];
}

final class AlphabetsInitial extends AlphabetsState {}
