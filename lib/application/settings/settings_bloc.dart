import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/core/failures/main_failure.dart';
import '../../domain/settings/i_settings_repo.dart';
import '../../domain/settings/models/settings.dart';
part 'settings_event.dart';
part 'settings_state.dart';
part 'settings_bloc.freezed.dart';

@injectable
class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  final ISettingsRepo _settingsRepo;

  SettingsBloc(this._settingsRepo) : super(SettingsState.initial()) {
    on<_GetSettings>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
        settingsFailureOrSuccessOption: none(),
      ));
      final Either<MainFailure, List<Settings>> settingsOption =
          await _settingsRepo.getSettings();

      emit(
        settingsOption.fold(
          (failure) => state.copyWith(
            isLoading: false,
            settingsFailureOrSuccessOption: Some(
              Left(failure),
            ),
          ),
          (success) => state.copyWith(
            isLoading: false,
            settings: success,
            settingsFailureOrSuccessOption: Some(
              Right(success),
            ),
          ),
        ),
      );
    });
  }
}
