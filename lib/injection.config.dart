// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc.dart' as _i20;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i19;
import 'application/restaurant_form/restaurant_form_bloc.dart' as _i11;
import 'application/restaurant_self/restaurant_self_bloc.dart' as _i12;
import 'application/restaurants/restaurants_bloc.dart' as _i13;
import 'application/review_form/review_form_bloc.dart' as _i14;
import 'application/reviews/reviews_bloc.dart' as _i15;
import 'application/users/users_bloc.dart' as _i16;
import 'domain/auth/i_auth_facade.dart' as _i17;
import 'domain/restaurant/i_restaurant_repository.dart' as _i5;
import 'domain/review/i_review_repository.dart' as _i7;
import 'domain/user/i_user_repository.dart' as _i9;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i18;
import 'infrastructure/core/firebase_injectable_module.dart' as _i21;
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
  gh.lazySingleton<_i5.IRestaurantRepository>(() => _i6.RestaurantRepository(
      get<_i4.FirebaseFirestore>(), get<_i3.FirebaseAuth>()));
  gh.lazySingleton<_i7.IReviewRepository>(
      () => _i8.ReviewRepository(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i9.IUserRepository>(
      () => _i10.UserRepository(get<_i4.FirebaseFirestore>()));
  gh.factory<_i11.RestaurantFormBloc>(
      () => _i11.RestaurantFormBloc(get<_i5.IRestaurantRepository>()));
  gh.factory<_i12.RestaurantSelfBloc>(
      () => _i12.RestaurantSelfBloc(get<_i5.IRestaurantRepository>()));
  gh.factory<_i13.RestaurantsBloc>(
      () => _i13.RestaurantsBloc(get<_i5.IRestaurantRepository>()));
  gh.factory<_i14.ReviewFormBloc>(() => _i14.ReviewFormBloc(
      get<_i7.IReviewRepository>(), get<_i5.IRestaurantRepository>()));
  gh.factory<_i15.ReviewsBloc>(
      () => _i15.ReviewsBloc(get<_i7.IReviewRepository>()));
  gh.factory<_i16.UsersBloc>(() => _i16.UsersBloc(get<_i9.IUserRepository>()));
  gh.lazySingleton<_i17.IAuthFacade>(() => _i18.FirebaseAuthFacade(
      get<_i3.FirebaseAuth>(), get<_i9.IUserRepository>()));
  gh.factory<_i19.SignInFormBloc>(
      () => _i19.SignInFormBloc(get<_i17.IAuthFacade>()));
  gh.factory<_i20.AuthBloc>(() => _i20.AuthBloc(get<_i17.IAuthFacade>()));
  return get;
}

class _$FirebaseInjectableModule extends _i21.FirebaseInjectableModule {}
