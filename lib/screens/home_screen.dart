import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'doctors_screen.dart';
import 'appointment_screen.dart';
import 'login_screen.dart';

class HomeScreen extends StatelessWidget {
  void logout(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => LoginScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    final userEmail = FirebaseAuth.instance.currentUser?.email ?? "User";
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome, $userEmail'),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () => logout(context),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('View Doctors'),
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => DoctorsScreen())),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text('My Appointments'),
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => AppointmentScreen())),
            ),
          ],
        ),
      ),
    );
  }
}
