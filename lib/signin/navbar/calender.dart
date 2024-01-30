import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Calendar extends StatefulWidget {
  const Calendar({Key? key}) : super(key: key);

  @override
  CalendarState createState() => CalendarState();
}

class CalendarState extends State<Calendar> {
  late DateTime _selectedDate;
  late DateTime _currentMonth;

  @override
  void initState() {
    super.initState();
    _selectedDate = DateTime.now();
    _currentMonth = DateTime(_selectedDate.year, _selectedDate.month);
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      body: _buildCalendar(),
    );
  }

  void _onDaySelected(DateTime day) {
    setState(() {
      _selectedDate = day;
    });
  }

  Widget _buildCalendar() {
    
    final List<Widget> weeks = [];
    DateTime firstDayOfMonth = DateTime(_currentMonth.year, _currentMonth.month, 1);
    DateTime lastDayOfMonth = DateTime(_currentMonth.year, _currentMonth.month + 1, 0);
    DateTime currentDate = firstDayOfMonth.subtract(Duration(days: firstDayOfMonth.weekday - 1));

    while (currentDate.isBefore(lastDayOfMonth)) {
          double minSide = MediaQuery.of(context).size.shortestSide * 0.1;

      List<Widget> daysInWeek = [];
      for (int i = 0; i < 7; i++) {
        daysInWeek.add(
          GestureDetector(
            onTap: () => _onDaySelected(currentDate),
            child: Padding(
              padding:  EdgeInsets.only(left: minSide*0.7),
              child: Container(
                width: minSide*0.6,
                height: minSide,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: currentDate.month == _currentMonth.month
                      ? (currentDate.day == _selectedDate.day ? Colors.blue : null)
                      : Colors.grey.withOpacity(0.5),
                ),
                child: Text(
                  '${currentDate.day}',
                  style: TextStyle(
                    color: currentDate.month == _currentMonth.month
                        ? (currentDate.day == _selectedDate.day ? Colors.white : Colors.black)
                        : Colors.grey,
                        fontSize: minSide*0.5
                  ),
                ),
              ),
            ),
          ),
        );
        currentDate = currentDate.add(const Duration(days: 1));
      }
      weeks.add(Row(children: daysInWeek));
    }

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: const Icon(Icons.chevron_left),
              onPressed: () {
                setState(() {
                  _currentMonth = DateTime(_currentMonth.year, _currentMonth.month - 1);
                });
              },
            ),
            Text(DateFormat('MMMM yyyy').format(_currentMonth)),
            IconButton(
              icon: const Icon(Icons.chevron_right),
              onPressed: () {
                setState(() {
                  _currentMonth = DateTime(_currentMonth.year, _currentMonth.month + 1);
                });
              },
            ),
          ],
        ),
        ...weeks,
      ],
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: Calendar(),
  ));
}
