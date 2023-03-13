import 'package:bloc/bloc.dart';
import 'package:clean_arc_flutter_test/features/splash/data/model/splash_model.dart';
import 'package:clean_arc_flutter_test/features/splash/domain/usecase/splash_usecase.dart';
import 'package:meta/meta.dart';

part 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {

  final SplashUseCase _useCase;

  SplashCubit(this._useCase) : super(SplashInitial());

  Future<dynamic> getSplashData() async {

    try{
      emit(SplashLoading());
      SplashModel model = await _useCase.getSplashData();
      emit(SplashLoaded(model));

    }catch(error){
      emit(SplashError("error"));
    }
  }
}
