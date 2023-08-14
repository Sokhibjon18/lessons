part of 'contact_bloc.dart';

@freezed
class ContactEvent with _$ContactEvent {
  const factory ContactEvent.getContacts() = _GetContacts;
  const factory ContactEvent.create() = _Create;
  const factory ContactEvent.update() = _Update;
  const factory ContactEvent.delete() = _Delete;
  const factory ContactEvent.changeNumber(String number) = _ChangeNumber;
  const factory ContactEvent.changeName(String name) = _ChangeName;
}
