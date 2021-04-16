// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc.dart' as _i19;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i18;
import 'application/restaurant_creation/restaurant_creation_bloc.dart' as _i11;
import 'application/restaurant_self/restaurant_self_bloc.dart' as _i12;
import 'application/restaurants/restaurants_bloc.dart' as _i13;
import 'application/review_creation/review_creation_bloc.dart' as _i14;
import 'application/reviews/reviews_bloc.dart' as _i15;
import 'domain/auth/i_auth_facade.dart' as _i16;
import 'domain/restaurant/i_restaurant_repository.dart' as _i5;
import 'domain/review/i_review_repository.dart' as _i7;
import 'domain/user/i_user_repository.dart' as _i9;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i17;
import 'infrastructure/core/firebase_injectable_module.dart' as _i20;
import 'infrastructure/restaurant/restaurant_repository.dart' as _i6;
import 'infrastructure/restaurant/review/review_repository.dart' as _i8;
import 'infrastructure/user/user_repository.dart'
    as _i10; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i7.IReviewRepository>(
      () => _i8.ReviewRepository(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i9.IUserRepository>(
      () => _i10.UserRepository(get<_i4.FirebaseFirestore>()));
  gh.factory<_i11.RestaurantCreationBloc>(() => _i11.RestaurantCreationBloc(
      get<_i5.IRestaurantRepository>(), get<_i3.FirebaseAuth>()));
  gh.factory<_i12.RestaurantSelfBloc>(() => _i12.RestaurantSelfBloc());
  gh.factory<_i13.RestaurantsBloc>(
      () => _i13.RestaurantsBloc(get<_i5.IRestaurantRepository>()));
  gh.factory<_i14.ReviewCreationBloc>(
      () => _i14.ReviewCreationBloc(get<_i7.IReviewRepository>()));
  gh.factory<_i15.ReviewsBloc>(
      () => _i15.ReviewsBloc(get<_i7.IReviewRepository>()));
  gh.lazySingleton<_i16.IAuthFacade>(() => _i17.FirebaseAuthFacade(
      get<_i3.FirebaseAuth>(), get<_i9.IUserRepository>()));
  gh.factory<_i18.SignInFormBloc>(
      () => _i18.SignInFormBloc(get<_i16.IAuthFacade>()));
  gh.factory<_i19.AuthBloc>(() => _i19.AuthBloc(get<_i16.IAuthFacade>()));
  return get;
}

class _$FirebaseInjectableModule extends _i20.FirebaseInjectableModule {}
