part of 'settings_bloc.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState(
      {required bool isLoading,
      required List<Settings> settings,
      required Option<Either<MainFailure, List<Settings>>>
          settingsFailureOrSuccessOption}) = _SettingsState;
  factory SettingsState.initial() {
    return const SettingsState(
      isLoading: false,
      settingsFailureOrSuccessOption: None(),
      settings: [],
    );
  }
}
