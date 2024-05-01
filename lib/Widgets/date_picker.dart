import 'package:flutter/material.dart';

class DatePicker extends StatefulWidget {
  const DatePicker({Key? key}) : super(key: key);

  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  Future<void> _showDatePicker() async {
    final selectedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1990),
      lastDate: DateTime(2005),
    );

    if (selectedDate != null) {
      // Do something with the selected date
      print('Selected date: $selectedDate');
    }
  }
  //sssa

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _showDatePicker,
      style: const ButtonStyle(
        backgroundColor: MaterialStatePropertyAll<Color>(Colors.white),
      ),
      child: const Text(
        'Date',
        style: TextStyle(color: Colors.lightBlue),
      ),
    );
  }
}
