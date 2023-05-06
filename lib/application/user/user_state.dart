part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  const factory UserState(
      {required bool isLoading,
      required List<User> user,
      required Option<Either<MainFailure, List<User>>>
          userFailureOrSuccessOption}) = _UserState;
  factory UserState.initial() {
    return const UserState(
      isLoading: false,
      userFailureOrSuccessOption: None(),
      user: [],
    );
  }
}
