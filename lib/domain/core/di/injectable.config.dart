// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../application/banners/banners_bloc.dart' as _i31;
import '../../../application/earning_history/earning_history_bloc.dart' as _i32;
import '../../../application/limit/limited_bloc.dart' as _i23;
import '../../../application/offers/offers_bloc.dart' as _i24;
import '../../../application/recommend/recommend_bloc.dart' as _i25;
import '../../../application/redeem_history/redeem_history_bloc.dart' as _i26;
import '../../../application/settings/settings_bloc.dart' as _i27;
import '../../../application/special/special_bloc.dart' as _i28;
import '../../../application/user/user_bloc.dart' as _i29;
import '../../../application/withdraw_methods/withdraw_methods_bloc.dart'
    as _i30;
import '../../../infrastructure/banners/banners_repository.dart' as _i4;
import '../../../infrastructure/earning_history/earning_history.dart' as _i6;
import '../../../infrastructure/limited/limited_repository.dart' as _i8;
import '../../../infrastructure/offers/offers_repository.dart' as _i10;
import '../../../infrastructure/recommend/recommend_repository.dart' as _i12;
import '../../../infrastructure/redeem_history/redeem_history.dart' as _i14;
import '../../../infrastructure/settings/settings_repository.dart' as _i16;
import '../../../infrastructure/special/special_repository.dart' as _i18;
import '../../../infrastructure/user/user_repository.dart' as _i20;
import '../../../infrastructure/withdraw_methods/withdraw_methods_repository.dart'
    as _i22;
import '../../banners/i_banners_repo.dart' as _i3;
import '../../earning_history/i_earning_history.dart' as _i5;
import '../../limited/i_limited_repo.dart' as _i7;
import '../../offers/i_offers_repo.dart' as _i9;
import '../../recommend/i_recommend_repo.dart' as _i11;
import '../../redeem_history/i_redeem_history_repository.dart' as _i13;
import '../../settings/i_settings_repo.dart' as _i15;
import '../../special/i_special_repo.dart' as _i17;
import '../../user/i_user_repo.dart' as _i19;
import '../../withdraw_methods/i_withdraw_methods_repo.dart'
    as _i21; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.IBannersRepo>(() => _i4.BannersRepository());
  gh.lazySingleton<_i5.IEarningHistoryRepo>(
      () => _i6.EarningHistoryRepository());
  gh.lazySingleton<_i7.ILimitedRepo>(() => _i8.LimitedRepository());
  gh.lazySingleton<_i9.IOffersRepo>(() => _i10.OffersRepository());
  gh.lazySingleton<_i11.IRecommendRepo>(() => _i12.RecommendRepository());
  gh.lazySingleton<_i13.IRedeemHistoryRepo>(
      () => _i14.RedeemHistoryRepository());
  gh.lazySingleton<_i15.ISettingsRepo>(() => _i16.SettingsRepository());
  gh.lazySingleton<_i17.ISpecialRepo>(() => _i18.SpecialRepository());
  gh.lazySingleton<_i19.IUserRepo>(() => _i20.UserRepository());
  gh.lazySingleton<_i21.IWithdrawMethodsRepo>(
      () => _i22.WithdrawMethodsRepository());
  gh.factory<_i23.LimitedBloc>(() => _i23.LimitedBloc(get<_i7.ILimitedRepo>()));
  gh.factory<_i24.OffersBloc>(() => _i24.OffersBloc(get<_i9.IOffersRepo>()));
  gh.factory<_i25.RecommendBloc>(
      () => _i25.RecommendBloc(get<_i11.IRecommendRepo>()));
  gh.factory<_i26.RedeemHistoryBloc>(
      () => _i26.RedeemHistoryBloc(get<_i13.IRedeemHistoryRepo>()));
  gh.factory<_i27.SettingsBloc>(
      () => _i27.SettingsBloc(get<_i15.ISettingsRepo>()));
  gh.factory<_i28.SpecialBloc>(
      () => _i28.SpecialBloc(get<_i17.ISpecialRepo>()));
  gh.factory<_i29.UserBloc>(() => _i29.UserBloc(get<_i19.IUserRepo>()));
  gh.factory<_i30.WithdrawMethodsBloc>(
      () => _i30.WithdrawMethodsBloc(get<_i21.IWithdrawMethodsRepo>()));
  gh.factory<_i31.BannersBloc>(() => _i31.BannersBloc(get<_i3.IBannersRepo>()));
  gh.factory<_i32.EarningHistoryBloc>(
      () => _i32.EarningHistoryBloc(get<_i5.IEarningHistoryRepo>()));
  return get;
}
