import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(const SplashInitial());

  Future<void> onStartSplash() async {
    await Future.delayed(const Duration(seconds: 5));
    emit(SplashNavigate());
  }
}
