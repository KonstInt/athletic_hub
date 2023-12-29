import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateCreateWidget extends StatefulWidget {
  final void Function(DateTime) onDateSelected;

  const DateCreateWidget({super.key, required this.onDateSelected});

  @override
  _DateCreateWidgetState createState() => _DateCreateWidgetState();
}

class _DateCreateWidgetState extends State<DateCreateWidget> {
  late DateTime selectedDate;

  @override
  void initState() {
    super.initState();
    selectedDate = DateTime.now();
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: selectedDate,
      lastDate: DateTime(2025),
      builder: (context, childWidget) {
      //  Locale locale = Localizations.localeOf(context);
        return Theme(
          data: ThemeData.light().copyWith(
            primaryColor: Colors.white70,
            colorScheme: const ColorScheme.light(
              primary: Colors.black45,
            ),
            buttonTheme: const ButtonThemeData(
              textTheme: ButtonTextTheme.primary,
            ),
          ),
          child: MediaQuery(
            data: MediaQuery.of(context).copyWith(
              alwaysUse24HourFormat: true,
            ),
            child: childWidget!,
          ),
        );
      },
    );

    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
      // Вызываем колбэк, передавая выбранную дату родительскому виджету
      widget.onDateSelected(selectedDate);
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => _selectDate(context),
      child: Text(
        DateFormat('dd-MM-yyyy').format(selectedDate),
        style: const TextStyle(
          fontSize: 26,
          fontWeight: FontWeight.w300,
        ),
      ),
    );
  }
}
