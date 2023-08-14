import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lesson_13/firebase_firestore/data/contacts_repository.dart';
import 'package:lesson_13/firebase_firestore/model/contact.dart';

part 'contact_event.dart';
part 'contact_state.dart';
part 'contact_bloc.freezed.dart';

class ContactBloc extends Bloc<ContactEvent, ContactState> {
  final ContactsRepository contactsRepository = ContactsRepository();
  List<Map<String, dynamic>> contactList = [];
  Contact contact = Contact.empty();

  ContactBloc() : super(const _Initial()) {
    on<_Create>((event, emit) async {
      log('message');
      var result = await contactsRepository.create(contact);
      log('Create $result');
    });
    on<_GetContacts>((event, emit) async {
      final result = await contactsRepository.getContacts();
      contactList = result;
      emit(ContactState.contactsTaken(result));
    });
    on<_ChangeName>((event, emit) {
      contact.name = event.name;
    });
    on<_ChangeNumber>((event, emit) {
      contact.number = event.number;
    });
  }
}
