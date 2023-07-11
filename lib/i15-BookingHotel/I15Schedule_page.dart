import 'package:flutter/material.dart';
import 'package:lesson_13/i15-BookingHotel/widgets/my_schedule.dart';
import 'package:table_calendar/table_calendar.dart';

class I15SchedulePage extends StatefulWidget {
  const I15SchedulePage({super.key});

  @override
  State<I15SchedulePage> createState() => _I15SchedulePageState();
}

class _I15SchedulePageState extends State<I15SchedulePage> {
  DateTime today = DateTime.now();
  void _onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                const Text(
                  'Schedule',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 12),
                SizedBox(
                  child: TableCalendar(
                    locale: 'en_US',
                    rowHeight: 42,
                    headerStyle: const HeaderStyle(
                        formatButtonVisible: false, titleCentered: true),
                    availableGestures: AvailableGestures.all,
                    focusedDay: today,
                    firstDay: DateTime.utc(2023, 1, 1),
                    lastDay: DateTime.utc(2030, 12, 31),
                    selectedDayPredicate: (day) => isSameDay(day, today),
                    onDaySelected: _onDaySelected,
                  ),
                ),
                const SizedBox(height: 24),
                const MySchedule(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
