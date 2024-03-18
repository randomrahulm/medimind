import 'package:flutter/material.dart';
import 'package:medimind/pages/DashBoard.dart';

class PatientListScreen extends StatelessWidget {
  final List<Patient> patients = [
    Patient(name: 'Sriraman', age: 22, imagePath: 'assets/images/patient1.jpg'),
    Patient(name: 'Shaham', age: 24, imagePath: 'assets/images/patient2.jpg'),
    Patient(
        name: 'Rishikesh', age: 20, imagePath: 'assets/images/patient4.jpg'),
    Patient(name: 'Srinidhi', age: 21, imagePath: 'assets/images/patient3.jpg'),
    Patient(name: 'Aswin', age: 27, imagePath: 'assets/images/patient5.jpg'),
    Patient(name: 'liya', age: 27, imagePath: 'assets/images/patient6.jpg'),
    Patient(name: 'Ajai', age: 27, imagePath: 'assets/images/patient7.jpg'),

    // Add more patients here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Patient List',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.cyan[700],
        centerTitle: true,
        toolbarHeight: 100,
        
      ),
      body: ListView.builder(
        itemCount: patients.length,
        itemBuilder: (context, index) {
          return PatientCard(patient: patients[index]);
        },
      ),
      backgroundColor: Colors.cyan[700],
    );
  }
}

class PatientCard extends StatelessWidget {
  final Patient patient;

  const PatientCard({Key? key, required this.patient}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: ListTile(
        tileColor: Colors.cyan[800],
        leading: CircleAvatar(
          backgroundImage: AssetImage(patient.imagePath),
          radius: 30,
        ),
        title: Text(
          patient.name,
          style: TextStyle(color: Colors.white),
        ),
        subtitle: Text(
          'Age: ${patient.age}',
          style: TextStyle(color: Colors.white),
        ),
        trailing: Icon(Icons.arrow_forward_ios, color: Colors.white),
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const DashBoard()));
        },
      ),
    );
  }
}

class Patient {
  final String name;
  final int age;
  final String imagePath;

  Patient({required this.name, required this.age, required this.imagePath});
}
