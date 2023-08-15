// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:lesson_13/firebase_firestore/model/contact.dart';

class ContactsRepository {
  Future<List<Contact>> getContacts() async {
    try {
      QuerySnapshot querySnapshot = await FirebaseFirestore.instance.collection('contacts').get();

      return querySnapshot.docs.map((DocumentSnapshot doc) {
        var contact = Contact.fromMap(doc.data() as Map<String, dynamic>);
        contact.id = doc.id;
        return contact;
      }).toList();
    } catch (e) {
      log('Error retrieving items from Firestore: $e');
      return [];
    }
  }

  Future<String?> create(Contact contact) async {
    try {
      await FirebaseFirestore.instance.collection('contacts').doc().set({
        'name': contact.name,
        'number': contact.number,
      });
      return null;
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return 'Permission denied';
      } else {
        return 'unexpected error occured';
      }
    }
  }

  Future<String?> update(Contact contact) async {
    try {
      await FirebaseFirestore.instance.collection('contacts').doc(contact.id).update({
        'name': contact.name,
        'number': contact.number,
      });
      return null;
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return 'Permission denied';
      } else {
        return 'unexpected error occured';
      }
    }
  }

  Future<String?> delete(Contact contact) async {
    try {
      await FirebaseFirestore.instance.collection('contacts').doc(contact.id).delete();
      return null;
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return 'Permission denied';
      } else {
        return 'unexpected error occured';
      }
    }
  }
}
