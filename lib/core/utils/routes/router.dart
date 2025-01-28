import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stoblo/core/common/views/empty_screen.dart';
import 'package:stoblo/core/utils/injection_container/injection_container.dart';
import 'package:stoblo/core/utils/routes/route_constants.dart';
import 'package:stoblo/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:stoblo/features/auth/presentation/view/login_screen.dart';
import 'package:stoblo/features/auth/presentation/view/signup_screen.dart';
import 'package:stoblo/features/main/presentation/view/main_screen.dart';
import 'package:stoblo/features/profile/view/about_tori_screen.dart';
import 'package:stoblo/features/profile/view/privacy_policy_screen.dart';
import 'package:stoblo/features/profile/view/terms_and_conditions_screen.dart';

import '../../../features/main/presentation/bloc/main_bloc.dart';

part 'route_generator.dart';
