part of 'withdraw_methods_bloc.dart';

@freezed
class WithdrawMethodsState with _$WithdrawMethodsState {
  const factory WithdrawMethodsState(
      {required bool isLoading,
      required List<WithdrawMethods> withdrawMethods,
      required Option<Either<MainFailure, List<WithdrawMethods>>>
          withdrawMethodsFailureOrSuccessOption}) = _WithdrawMethodsState;
  factory WithdrawMethodsState.initial() {
    return const WithdrawMethodsState(
      isLoading: false,
      withdrawMethodsFailureOrSuccessOption: None(),
      withdrawMethods: [],
    );
  }
}
