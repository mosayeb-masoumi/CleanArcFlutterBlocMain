import 'package:clean_arc_flutter_test/features/splash/domain/repository/splash_repository.dart';

class SplashUseCase extends SplashRepository{

  final SplashRepository _splashRepository;
  SplashUseCase(this._splashRepository);

  @override
  Future getSplashData() {
    return _splashRepository.getSplashData();
  }

}