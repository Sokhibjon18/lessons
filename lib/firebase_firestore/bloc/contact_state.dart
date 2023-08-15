part of 'contact_bloc.dart';

@freezed
class ContactState with _$ContactState {
  const factory ContactState.initial() = _Initial;
  const factory ContactState.contactsTaken(List<Contact> contactsList) = _ContactsTaken;
  const factory ContactState.success() = _Success;
  const factory ContactState.loading() = _Loading;
  const factory ContactState.failure(String message) = _Failure;
}
