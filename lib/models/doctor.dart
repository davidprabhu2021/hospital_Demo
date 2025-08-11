class Doctor {
  final String name;
  final String specialty;

  Doctor({required this.name, required this.specialty});
}

List<Doctor> dummyDoctors = [
  Doctor(name: 'Dr. Prabhu', specialty: 'Cardiologist'),
  Doctor(name: 'Dr. Raja', specialty: 'Dermatologist'),
  Doctor(name: 'Dr. Prabhu Raja', specialty: 'Pediatrician'),
];
