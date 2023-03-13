
import 'package:clean_arc_flutter_test/features/home_page/data/data_source/home_data_source.dart';
import 'package:clean_arc_flutter_test/features/home_page/presentation/bloc/home_cubit.dart';
import 'package:clean_arc_flutter_test/features/splash/data/repository/spalsh_repository_impl.dart';
import 'package:clean_arc_flutter_test/features/splash/domain/repository/splash_repository.dart';
import 'package:clean_arc_flutter_test/features/splash/domain/usecase/splash_usecase.dart';
import 'package:clean_arc_flutter_test/features/splash/presentation/bloc/splash_cubit.dart';
import 'package:get_it/get_it.dart';

import 'features/home_page/data/repository/home_repository_impl.dart';
import 'features/home_page/domain/repository/home_repository.dart';
import 'features/home_page/domain/usecase/home_usecase.dart';
import 'features/splash/data/data_source/splash_data_source.dart';

final sl = GetIt.instance;

void setUpDI(){

  // home
  sl.registerFactory<HomeDataSource>(() => IHomeDatasource());
  sl.registerFactory<HomeRepository>(() => HomeRepositoryImpl(sl()));
  sl.registerFactory<HomeUseCase>(() => HomeUseCase(sl()));
  sl.registerFactory<HomeCubit>(() => HomeCubit(sl()));


  //splash
  sl.registerFactory<SplashDataSource>(() => ISplashDataSource());
  sl.registerFactory<SplashRepository>(() => SplashRepositoryImpl(sl()));
  sl.registerFactory<SplashUseCase>(() => SplashUseCase(sl()));
  sl.registerFactory<SplashCubit>(() => SplashCubit(sl()));
}