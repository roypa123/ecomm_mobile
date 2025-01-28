part of 'injection_container.dart';

GetIt sl = GetIt.instance;

Future<void> injectionContainer() async {
  // await _initNetworkServices();
  // await _initSembastServices();
  // await _initAuth();
  // await _initMain();
  // await _initProfileBloc();
}

// Future<void> _initNetworkServices() async {
//   sl.registerLazySingleton<NetWorkBaseServices>(() => NetworkServices());
// }

// Future<void> _initSembastServices() async {
//   sl.registerLazySingleton<LocalBaseServices1>(() => SembastServices1());
// }




// Future<void> _initAuth() async {
//   sl
//     ..registerFactory(
//       () => AuthBloc(
//         emailSignIn: sl(),
//       ),
//     )
//     ..registerLazySingleton(() => EmailSignIn(sl()))
//     ..registerLazySingleton<AuthRepo>(() => AuthRepoImpl(sl()))
//     ..registerLazySingleton<AuthRemoteDataSource>(
//       () => AuthRemoteDataSourceImpl(networkBaseServices: sl()),
//     );
// }

// Future<void> _initMain() async {
//   sl.registerFactory(
//     () => MainBloc(),
//   );
// }

// Future<void> _initProfileBloc() async {
//   sl.registerFactory(
//     () => ProfileBloc(),
//   );
// }

Future<void> initiliazeObjects() async {
 // await sl.get<LocalBaseServices1>().initialize();
}
