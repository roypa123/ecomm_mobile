part of 'injection_container.dart';

GetIt sl = GetIt.instance;

Future<void> injectionContainer() async {
  await _initSplash();
  await _initAuth();
  await _initAddCategories();
}

Future<void> _initSplash() async {
  sl.registerFactory(
    () => SplashCubit(),
  );
}

Future<void> _initAuth() async {
  sl.registerFactory(
    () => AuthBloc(),
  );
}

Future<void> _initAddCategories() async {
  sl.registerFactory(
    () => AddCategoriesBloc(),
  );
}

Future<void> initiliazeObjects() async {
  // await sl.get<LocalBaseServices1>().initialize();
}
