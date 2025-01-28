import 'package:get_it/get_it.dart';
import 'package:stoblo/core/data/remote/network_base_services.dart';
import 'package:stoblo/core/data/remote/network_services.dart';
import 'package:stoblo/core/data1/local1/local_base_services1.dart';
import 'package:stoblo/core/data1/local1/sembast_services1.dart';
import 'package:stoblo/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:stoblo/features/auth/data/repositories/auth_repo_impl.dart';
import 'package:stoblo/features/auth/domain/repositories/auth_repo.dart';
import 'package:stoblo/features/auth/domain/usecases/sign_in.dart';
import 'package:stoblo/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:stoblo/features/main/presentation/bloc/main_bloc.dart';
import 'package:stoblo/features/profile/view/bloc/profile_bloc.dart';

part 'injection_container.main.dart';