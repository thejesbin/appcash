import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/core/failures/main_failure.dart';
import '../../domain/special/i_special_repo.dart';
import '../../domain/special/models/special.dart';
part 'special_event.dart';
part 'special_state.dart';
part 'special_bloc.freezed.dart';

@injectable
class SpecialBloc extends Bloc<SpecialEvent, SpecialState> {
  final ISpecialRepo _specialRepo;

  SpecialBloc(this._specialRepo) : super(SpecialState.initial()) {
    on<_GetSpecialOffers>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
        specialFailureOrSuccessOption: none(),
      ));
      final Either<MainFailure, List<Special>> specialOption =
          await _specialRepo.getSpecialOffers();

      emit(
        specialOption.fold(
          (failure) => state.copyWith(
            isLoading: false,
            specialFailureOrSuccessOption: Some(
              Left(failure),
            ),
          ),
          (success) => state.copyWith(
            isLoading: false,
            special: success,
            specialFailureOrSuccessOption: Some(
              Right(success),
            ),
          ),
        ),
      );
    });
  }
}
