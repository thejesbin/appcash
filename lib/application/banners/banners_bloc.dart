import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import '../../domain/banners/banners.dart';
import '../../domain/banners/i_banners_repo.dart';
import '../../domain/core/failures/main_failure.dart';

import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'banners_event.dart';
part 'banners_state.dart';
part 'banners_bloc.freezed.dart';

@injectable
class BannersBloc extends Bloc<BannersEvent, BannersState> {
  final IBannersRepo _bannersRepo;

  BannersBloc(this._bannersRepo) : super(BannersState.initial()) {
    on<_GetBanners>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
        bannersFailureOrSuccessOption: none(),
      ));
      final Either<MainFailure, List<Banners>> bannersOption =
          await _bannersRepo.getBanners();

      emit(
        bannersOption.fold(
          (failure) => state.copyWith(
            isLoading: false,
            bannersFailureOrSuccessOption: Some(
              Left(failure),
            ),
          ),
          (success) => state.copyWith(
            isLoading: false,
            banners: success,
            bannersFailureOrSuccessOption: Some(
              Right(success),
            ),
          ),
        ),
      );
    });
  }
}
