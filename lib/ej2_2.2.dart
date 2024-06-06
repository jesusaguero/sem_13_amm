import 'package:flutter/cupertino.dart';

void main() {
  runApp(MyApp());
}

class CupertinoDatePickerExample extends StatefulWidget {
  @override
  _CupertinoDatePickerExampleState createState() =>
      _CupertinoDatePickerExampleState();
}

class _CupertinoDatePickerExampleState extends State<CupertinoDatePickerExample> {
  DateTime _selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      child: Padding(
        padding: EdgeInsets.only(bottom:200,left:30),
      child:Text('Open DatePicker'),),
      onPressed: () {
        showCupertinoModalPopup<void>(
          context: context,
          builder: (BuildContext context) {
            return _buildCupertinoDatePicker();
          },
        );
      },
    );
  }

  Widget _buildCupertinoDatePicker() {
    return Container(
      height: 200,
      child: CupertinoDatePicker(
        mode: CupertinoDatePickerMode.date,
        initialDateTime: _selectedDate,
        onDateTimeChanged: (DateTime newDate) {
          setState(() {
            _selectedDate = newDate;
          });
        },
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CupertinoPageScaffold(
        child: Center(
          child: CupertinoDatePickerExample(),
        ),
      ),
    );
  }
}
