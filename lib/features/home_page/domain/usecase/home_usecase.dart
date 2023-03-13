import 'package:clean_arc_flutter_test/features/home_page/domain/repository/home_repository.dart';

class HomeUseCase extends HomeRepository{
  final HomeRepository _homeRepository;
  HomeUseCase(this._homeRepository);

  @override
  Future getHomeData() {
    return _homeRepository.getHomeData();
  }


}