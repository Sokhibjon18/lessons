// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lesson_13/todo_app/presentation/add_todo/widgets/add_todos_textformfield.dart';
import 'package:lesson_13/todo_app/presentation/add_todo/widgets/adding_item_name.dart';
import '../../application/todo/todo_bloc.dart';

class AddTodoPage extends StatefulWidget {
  const AddTodoPage({
    Key? key,
  }) : super(key: key);

  @override
  State<AddTodoPage> createState() => _AddTodoPageState();
}

class _AddTodoPageState extends State<AddTodoPage> {
  @override
  void initState() {
    // give todo to todoBloc with creating new event
    // context.read<TodoBloc>().add(TodoEvent.updateTodo(widget.todo));
    super.initState();
  }

  final TextEditingController titleEditingController = TextEditingController();
  final TextEditingController descriptionEditingController =
      TextEditingController();
  final TextEditingController locationEditingController =
      TextEditingController();
  final TextEditingController timeEditingController = TextEditingController();

  Color? _selectedColor = const Color(0xFFEE2B00);
  final List<Color> _colors = [
    const Color(0xFFEE2B00),
    const Color(0xFF009FEE),
    const Color(0xFFEE8F00),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.arrow_back,
                    size: 24,
                  ),
                ),
                const SizedBox(height: 32),
                const AddingItemName(text: 'Event name'),
                const SizedBox(height: 8),
                AddTodosTextFormfield(
                  controller: titleEditingController,
                  showSuffixIcon: false,
                  onChanged: (value) {
                    context.read<TodoBloc>().add(TodoEvent.changeTitle(value));
                  },
                  minLines: 1,
                ),
                const SizedBox(height: 20),
                const AddingItemName(text: 'Event description'),
                const SizedBox(height: 8),
                AddTodosTextFormfield(
                  controller: descriptionEditingController,
                  showSuffixIcon: false,
                  onChanged: (value) {
                    context
                        .read<TodoBloc>()
                        .add(TodoEvent.changeDescription(value));
                  },
                  minLines: 5,
                ),
                const SizedBox(height: 20),
                const AddingItemName(text: 'Event location'),
                const SizedBox(height: 8),
                AddTodosTextFormfield(
                  controller: locationEditingController,
                  showSuffixIcon: false,
                  onChanged: (value) {
                    context
                        .read<TodoBloc>()
                        .add(TodoEvent.changeLocation(value));
                  },
                  minLines: 1,
                ),
                const SizedBox(height: 20),
                Container(
                  height: 32,
                  width: 72,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF3F4F6),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: DropdownButton(
                      value: _selectedColor,
                      onChanged: (Color? color) {
                        setState(() {
                          _selectedColor = color;
                          context.read<TodoBloc>().add(
                                TodoEvent.changeColor(color!.value),
                              );
                        });
                      },
                      items:
                          _colors.map<DropdownMenuItem<Color>>((Color color) {
                        return DropdownMenuItem<Color>(
                          value: color,
                          child: Container(
                            width: 23,
                            height: 20,
                            color: color,
                          ),
                        );
                      }).toList(),
                      dropdownColor: const Color(0xFFF3F4F6),
                      borderRadius: BorderRadius.circular(8),
                      underline: Container(color: Colors.white),
                      icon: const Icon(Icons.arrow_drop_down),
                      iconDisabledColor: Colors.black,
                      iconEnabledColor: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const AddingItemName(text: 'Event time'),
                const SizedBox(height: 8),
                AddTodosTextFormfield(
                  controller: timeEditingController,
                  showSuffixIcon: false,
                  onChanged: (value) {
                    context.read<TodoBloc>().add(TodoEvent.changeDate(value));
                  },
                  minLines: 1,
                ),
                const SizedBox(height: 100),
                SizedBox(
                  height: 46,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      context.read<TodoBloc>().add(const TodoEvent.create());
                      Navigator.pop(context);
                    },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                    child: const Text('Add'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
