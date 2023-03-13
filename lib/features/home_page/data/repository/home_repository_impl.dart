import 'package:clean_arc_flutter_test/features/home_page/data/data_source/home_data_source.dart';
import 'package:clean_arc_flutter_test/features/home_page/data/model/home_model.dart';
import 'package:clean_arc_flutter_test/features/home_page/domain/repository/home_repository.dart';

class HomeRepositoryImpl extends HomeRepository{

  final HomeDataSource _dataSource;
  HomeRepositoryImpl(this._dataSource);

  @override
  Future getHomeData() {
    return _dataSource.geHomeData();
  }



  // @override
  // Future<dynamic> getHomeData() async{
  //
  //   try{
  //     HomeModel model = await dataSource.geHomeData();
  //     return model;
  //   }catch(error){
  //     return "error";
  //   }
  // }

}