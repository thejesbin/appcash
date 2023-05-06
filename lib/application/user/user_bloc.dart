import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/core/failures/main_failure.dart';
import '../../domain/user/i_user_repo.dart';
import '../../domain/user/models/user.dart';
part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';

@injectable
class UserBloc extends Bloc<UserEvent, UserState> {
  final IUserRepo _userRepo;

  UserBloc(this._userRepo) : super(UserState.initial()) {
    on<_GetUser>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
        userFailureOrSuccessOption: none(),
      ));
      final Either<MainFailure, List<User>> userOption =
          await _userRepo.getUser();

      emit(
        userOption.fold(
          (failure) => state.copyWith(
            isLoading: false,
            userFailureOrSuccessOption: Some(
              Left(failure),
            ),
          ),
          (success) => state.copyWith(
            isLoading: false,
            user: success,
            userFailureOrSuccessOption: Some(
              Right(success),
            ),
          ),
        ),
      );
    });
  }
}
