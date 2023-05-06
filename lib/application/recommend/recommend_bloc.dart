import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';

import 'package:injectable/injectable.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/core/failures/main_failure.dart';
import '../../domain/recommend/i_recommend_repo.dart';
import '../../domain/recommend/models/recommend.dart';
part 'recommend_event.dart';
part 'recommend_state.dart';
part 'recommend_bloc.freezed.dart';

@injectable
class RecommendBloc extends Bloc<RecommendEvent, RecommendState> {
  final IRecommendRepo _recommendRepo;

  RecommendBloc(this._recommendRepo) : super(RecommendState.initial()) {
    on<_GetRecommendOffers>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
        recommendFailureOrSuccessOption: none(),
      ));
      final Either<MainFailure, List<Recommend>> recommendOption =
          await _recommendRepo.getRecommendOffers();

      emit(
        recommendOption.fold(
          (failure) => state.copyWith(
            isLoading: false,
            recommendFailureOrSuccessOption: Some(
              Left(failure),
            ),
          ),
          (success) => state.copyWith(
            isLoading: false,
            recommend: success,
            recommendFailureOrSuccessOption: Some(
              Right(success),
            ),
          ),
        ),
      );
    });
  }
}
