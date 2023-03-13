import 'package:clean_arc_flutter_test/features/splash/data/model/splash_model.dart';

abstract class SplashDataSource{
  Future<dynamic> getSplashData();
}

class ISplashDataSource extends SplashDataSource{
  @override
  Future<dynamic> getSplashData() async {

    await Future.delayed(const Duration(seconds: 3));
    SplashModel model = SplashModel(true);
    return model;
  }

}