import 'package:bloc/bloc.dart';
import 'package:clean_arc_flutter_test/features/home_page/data/model/home_model.dart';
import 'package:clean_arc_flutter_test/features/home_page/domain/usecase/home_usecase.dart';
import 'package:meta/meta.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {

  final HomeUseCase homeDataUsecase;
  
  HomeCubit(this.homeDataUsecase) : super(HomeInitial());

  Future<void> getHomeData() async{

    try{
      emit(HomeLoading());
      var result = await homeDataUsecase.getHomeData();
      emit(HomeLoaded(result));
    }on Exception{
      emit(HomeError("error occured"));
    }
  }
  
  
}
