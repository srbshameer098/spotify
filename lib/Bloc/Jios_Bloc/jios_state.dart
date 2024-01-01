part of 'jios_bloc.dart';

@immutable
abstract class JiosState {}

class JiosInitial extends JiosState {}
class JiosblocLoading extends JiosState {}
class JiosblocLoaded extends JiosState {}
class JiosblocError extends JiosState {}