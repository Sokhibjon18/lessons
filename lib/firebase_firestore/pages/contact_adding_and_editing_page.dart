import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lesson_13/firebase_firestore/bloc/contact_bloc.dart';
import 'package:lesson_13/firebase_firestore/pages/widgets/contacts_textfield.dart';

class ContactAddingAndEditingPage extends StatefulWidget {
  const ContactAddingAndEditingPage({super.key});

  @override
  State<ContactAddingAndEditingPage> createState() => _ContactAddingAndEditingPageState();
}

class _ContactAddingAndEditingPageState extends State<ContactAddingAndEditingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add contacts'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24, top: 48, bottom: 48),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Name',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 6),
              ContactTextfield(
                onChanged: (value) {
                  context.read<ContactBloc>().add(ContactEvent.changeName(value));
                },
                hintText: 'Enter contact name',
              ),
              const SizedBox(height: 24),
              const Text(
                'Number',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 6),
              ContactTextfield(
                onChanged: (value) {
                  context.read<ContactBloc>().add(ContactEvent.changeNumber(value));
                },
                hintText: 'Enter contact number',
              ),
              Expanded(child: Container()),
              SizedBox(
                height: 48,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    context.read<ContactBloc>().add(const ContactEvent.create());
                  },
                  child: const Text('Add contact'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
