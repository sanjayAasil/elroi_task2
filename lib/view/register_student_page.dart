import 'package:flutter/material.dart';

class RegisterStudentPage extends StatefulWidget {
  const RegisterStudentPage({super.key});

  @override
  State<RegisterStudentPage> createState() => _RegisterStudentPageState();
}

class _RegisterStudentPageState extends State<RegisterStudentPage> {

  TextEditingController nameController = TextEditingController();
  TextEditingController fatherNameController = TextEditingController();
  TextEditingController datePickController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController mobileController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registration Form'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            ///Student Name
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Student Name',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
            ),

            ///Father's Name
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: TextField(
                controller: fatherNameController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Father's Name",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    )),
              ),
            ),

            ///DateOfBirth
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: datePickController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Date of Birth",
                        hintStyle: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.date_range),
                  ),
                ],
              ),
            ),

            ///country
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: TextField(
                controller: countryController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Country",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    )),
              ),
            ),

            ///email
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: TextField(
                controller: emailController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Email",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    )),
              ),
            ),

            ///mobileNumber
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: TextField(
                controller: mobileController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Mobile Number",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    )),
              ),
            ),
            const Spacer(),

            ///Save Button
            TextButton(
              onPressed: () {},
              child: const Text(
                'Save',
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
