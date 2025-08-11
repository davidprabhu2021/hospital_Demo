import 'package:flutter/material.dart';
import '../models/doctor.dart';

class DoctorsScreen extends StatelessWidget {
  void bookAppointment(BuildContext context, Doctor doctor) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Appointment booked with ${doctor.name}')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Doctors')),
      body: ListView.builder(
        itemCount: dummyDoctors.length,
        itemBuilder: (context, index) {
          final doctor = dummyDoctors[index];
          return ListTile(
            title: Text(doctor.name),
            subtitle: Text(doctor.specialty),
            trailing: ElevatedButton(
              child: Text('Book'),
              onPressed: () => bookAppointment(context, doctor),
            ),
          );
        },
      ),
    );
  }
}
