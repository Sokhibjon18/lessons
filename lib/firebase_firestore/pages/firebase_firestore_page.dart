import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lesson_13/firebase_firestore/bloc/contact_bloc.dart';
import 'package:lesson_13/firebase_firestore/pages/contact_adding_and_editing_page.dart';
import 'package:lesson_13/firebase_firestore/pages/widgets/contacts_body.dart';

class FirebaseFirestorePage extends StatefulWidget {
  const FirebaseFirestorePage({super.key});

  @override
  State<FirebaseFirestorePage> createState() => _FirebaseFirestorePageState();
}

class _FirebaseFirestorePageState extends State<FirebaseFirestorePage> {
  @override
  void initState() {
    context.read<ContactBloc>().add(const ContactEvent.getContacts());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacts'),
      ),
      body: const Column(
        children: [
          SizedBox(height: 12),
          ContactsBody(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => const ContactAddingAndEditingPage(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
