part of 'injection_container.dart';

GetIt sl = GetIt.instance;

Future<void> injectionContainer() async {
  // await _initNetworkServices();
  await _initSplash();
  await _initAuth();
}

Future<void> _initSplash() async {
  sl.registerFactory(
    () => SplashCubit(),
  );
}

Future<void> _initAuth() async {
  sl
    ..registerFactory(
      () => AuthBloc(
        // emailSignIn: sl(),
      ),
    );
    // ..registerLazySingleton(() => EmailSignIn(sl()))
    // ..registerLazySingleton<AuthRepo>(() => AuthRepoImpl(sl()));

  // ..registerLazySingleton<AuthRemoteDataSource>(
  //   () => AuthRemoteDataSourceImpl(networkBaseServices: sl()),
  // );
}

Future<void> initiliazeObjects() async {
  // await sl.get<LocalBaseServices1>().initialize();
}
