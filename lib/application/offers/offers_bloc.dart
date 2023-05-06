import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/core/failures/main_failure.dart';
import '../../domain/offers/i_offers_repo.dart';
import '../../domain/offers/models/offers.dart';
part 'offers_event.dart';
part 'offers_state.dart';
part 'offers_bloc.freezed.dart';

@injectable
class OffersBloc extends Bloc<OffersEvent, OffersState> {
  final IOffersRepo _offersRepo;

  OffersBloc(this._offersRepo) : super(OffersState.initial()) {
    on<_GetOffers>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
        offersFailureOrSuccessOption: none(),
      ));
      final Either<MainFailure, List<Offers>> offersOption =
          await _offersRepo.getOffers();

      emit(
        offersOption.fold(
          (failure) => state.copyWith(
            isLoading: false,
            offersFailureOrSuccessOption: Some(
              Left(failure),
            ),
          ),
          (success) => state.copyWith(
            isLoading: false,
            offers: success,
            offersFailureOrSuccessOption: Some(
              Right(success),
            ),
          ),
        ),
      );
    });
  }
}
