import 'package:flutter/material.dart';

class L20HomePage extends StatefulWidget {
  const L20HomePage({required this.changeTheme, super.key});

  final Function changeTheme;

  @override
  State<L20HomePage> createState() => _L20HomePageState();
}

class _L20HomePageState extends State<L20HomePage> {
  bool? isChecked = false;
  bool switcherValue = false;

  TimeOfDay selectedTime = TimeOfDay.now();

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: selectedTime,
    );
    if (picked != null && picked != selectedTime) {
      setState(() {
        selectedTime = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Text(
                  'Theme mode:',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Expanded(child: Container()),
                Text(
                  switcherValue ? 'dark' : 'light',
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w400),
                ),
                const SizedBox(width: 8),
                Switch(
                  value: switcherValue,
                  onChanged: (value) {
                    switcherValue = value;
                    widget.changeTheme();
                  },
                ),
              ],
            ),
            Row(
              children: [
                const Text('Checkbox'),
                Checkbox(
                  value: isChecked,
                  onChanged: (value) {
                    setState(() {
                      isChecked = value;
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 12),
            TextFormField(),
            const SizedBox(height: 12),
            Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 150,
                    width: 250,
                    child: Card(
                      child: Center(
                        child: Text('This is a Card'),
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Text button'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Elevated button'),
              ),
            ),
            const SizedBox(height: 24),
            Center(
              child: SizedBox(
                height: 48,
                child: ElevatedButton(
                  onPressed: () => _selectTime(context),
                  child: const Text('Select time'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
