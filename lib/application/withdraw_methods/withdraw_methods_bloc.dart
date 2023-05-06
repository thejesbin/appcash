import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/core/failures/main_failure.dart';
import '../../domain/withdraw_methods/i_withdraw_methods_repo.dart';
import '../../domain/withdraw_methods/models/withdraw_methods.dart';
part 'withdraw_methods_event.dart';
part 'withdraw_methods_state.dart';
part 'withdraw_methods_bloc.freezed.dart';

@injectable
class WithdrawMethodsBloc
    extends Bloc<WithdrawMethodsEvent, WithdrawMethodsState> {
  final IWithdrawMethodsRepo _withdrawMethodsRepo;

  WithdrawMethodsBloc(this._withdrawMethodsRepo)
      : super(WithdrawMethodsState.initial()) {
    on<_GetWithdrawMethods>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
        withdrawMethodsFailureOrSuccessOption: none(),
      ));
      final Either<MainFailure, List<WithdrawMethods>> withdrawMethodsOption =
          await _withdrawMethodsRepo.getWithdrawMethods();

      emit(
        withdrawMethodsOption.fold(
          (failure) => state.copyWith(
            isLoading: false,
            withdrawMethodsFailureOrSuccessOption: Some(
              Left(failure),
            ),
          ),
          (success) => state.copyWith(
            isLoading: false,
            withdrawMethods: success,
            withdrawMethodsFailureOrSuccessOption: Some(
              Right(success),
            ),
          ),
        ),
      );
    });
  }
}
