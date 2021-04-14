// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc.dart' as _i13;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i12;
import 'application/restaurants/restaurants_bloc.dart' as _i9;
import 'domain/auth/i_auth_facade.dart' as _i10;
import 'domain/restaurant/i_restaurant_repository.dart' as _i5;
import 'domain/user/i_user_repository.dart' as _i7;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i11;
import 'infrastructure/core/firebase_injectable_module.dart' as _i14;
import 'infrastructure/restaurant/restaurant_repository.dart' as _i6;
import 'infrastructure/user/user_repository.dart'
    as _i8; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<_i3.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i4.FirebaseFirestore>(
      () => firebaseInjectableModule.firestore);
  gh.lazySingleton<_i5.IRestaurantRepository>(
      () => _i6.RestaurantRepository(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i7.IUserRepository>(
      () => _i8.UserRepository(get<_i4.FirebaseFirestore>()));
  gh.factory<_i9.RestaurantsBloc>(
      () => _i9.RestaurantsBloc(get<_i5.IRestaurantRepository>()));
  gh.lazySingleton<_i10.IAuthFacade>(() => _i11.FirebaseAuthFacade(
      get<_i3.FirebaseAuth>(), get<_i7.IUserRepository>()));
  gh.factory<_i12.SignInFormBloc>(
      () => _i12.SignInFormBloc(get<_i10.IAuthFacade>()));
  gh.factory<_i13.AuthBloc>(() => _i13.AuthBloc(get<_i10.IAuthFacade>()));
  return get;
}

class _$FirebaseInjectableModule extends _i14.FirebaseInjectableModule {}
