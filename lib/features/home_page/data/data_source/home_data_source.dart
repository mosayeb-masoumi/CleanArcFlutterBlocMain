import 'package:clean_arc_flutter_test/features/home_page/data/model/home_model.dart';

abstract class HomeDataSource{
   Future<dynamic> geHomeData();
}

class IHomeDatasource extends HomeDataSource{

  @override
  Future geHomeData() async{
    await Future.delayed(const Duration(seconds: 3));
    HomeModel model = HomeModel(1 ,1 ,"title1" ,true);
    return model;
  }

}