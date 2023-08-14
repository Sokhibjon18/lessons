import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/contact_bloc.dart';

class ContactsBody extends StatelessWidget {
  const ContactsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ContactBloc, ContactState>(
      builder: (context, state) {
        return Expanded(
          child: ListView.separated(
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                child: Container(
                  height: 78,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.white),
                    boxShadow: const <BoxShadow>[
                      BoxShadow(blurRadius: 2, color: Colors.grey),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12, right: 12),
                    child: Row(
                      children: [
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text('+998991234567'),
                          ],
                        ),
                        Expanded(child: Container()),
                        InkWell(
                          onTap: () {},
                          child: const Icon(Icons.message),
                        ),
                        const SizedBox(width: 12),
                        InkWell(
                          onTap: () {},
                          child: const Icon(
                            Icons.phone,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(width: 12);
            },
            itemCount: 4,
          ),
        );
      },
    );
  }
}
