import 'package:clean_arc_flutter_test/features/splash/data/data_source/splash_data_source.dart';
import 'package:clean_arc_flutter_test/features/splash/data/model/splash_model.dart';
import 'package:clean_arc_flutter_test/features/splash/domain/repository/splash_repository.dart';

class SplashRepositoryImpl extends SplashRepository{

  final SplashDataSource _splashDataSource;

  SplashRepositoryImpl(this._splashDataSource);

  @override
  Future getSplashData() {
    return _splashDataSource.getSplashData();
  }

  // @override
  // Future<dynamic> getSplashData() async{
  //   try{
  //    SplashModel model = await _splashDataSource.getSplashData();
  //    return model;
  //   }catch(error){
  //     return error.toString();
  //   }
  // }



}