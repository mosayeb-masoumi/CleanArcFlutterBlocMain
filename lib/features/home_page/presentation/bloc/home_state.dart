part of 'home_cubit.dart';

@immutable
abstract class HomeState {
  const HomeState();
}

class HomeInitial extends HomeState {
  const HomeInitial();
}

class HomeLoading extends HomeState {
  const HomeLoading();
}

class HomeLoaded extends HomeState {
 final HomeModel model;
  const HomeLoaded(this.model);

 @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HomeLoaded &&
          runtimeType == other.runtimeType &&
          model == other.model;

  @override
  int get hashCode => model.hashCode;
}

class HomeError extends HomeState {
  final String error;
  const HomeError(this.error);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HomeError &&
          runtimeType == other.runtimeType &&
          error == other.error;

  @override
  int get hashCode => error.hashCode;
}