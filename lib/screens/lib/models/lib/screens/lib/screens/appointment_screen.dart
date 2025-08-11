import 'package:flutter/material.dart';

class AppointmentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Replace this with actual appointment data in real app
    final appointments = [
      'Dr. Prabhu - 12 Aug, 10:00 AM',
      'Dr. Prabhu Raja - 15 Aug, 2:00 PM',
    ];

    return Scaffold(
      appBar: AppBar(title: Text('My Appointments')),
      body: ListView.builder(
        itemCount: appointments.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(appointments[index]),
          );
        },
      ),
    );
  }
}
