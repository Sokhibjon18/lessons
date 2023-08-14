import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lesson_13/todo_app/presentation/todo_overview/widgets/todo_calendar.dart';
import 'package:lesson_13/todo_app/presentation/todo_overview/widgets/todo_list_header_row.dart';
import 'package:lesson_13/todo_app/presentation/todo_overview/widgets/todos_list.dart';

import '../../application/todo_overview/todo_overview_bloc.dart';

class TodoOverviewPage extends StatefulWidget {
  const TodoOverviewPage({super.key});

  @override
  State<TodoOverviewPage> createState() => _TodoOverviewPageState();
}

class _TodoOverviewPageState extends State<TodoOverviewPage> {
  @override
  void initState() {
    context.read<TodoOverviewBloc>().add(
          const TodoOverviewEvent.takeScheduleList(),
        );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(24.0),
          child: Column(
            children: [
              TodoCalendar(),
              SizedBox(height: 24),
              TodoListHeaderRow(),
              SizedBox(height: 8),
              TodosList(),
            ],
          ),
        ),
      ),
    );
  }
}
