import 'package:date_field/date_field.dart';
import 'package:facebookapp/screens/login.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  // final _formKey = GlobalKey<FormState>();
  String? _gender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          'Join Facebook',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
            child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      //controller
                      decoration: InputDecoration(
                        labelText: 'Name',
                        hintText: 'Enter Your Name',
                        border: OutlineInputBorder(),
                      ), // validator
                    ),
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Expanded(
                    child: TextFormField(
                      // controller: _surnameController,
                      decoration: InputDecoration(
                        labelText: 'Surname',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              // InputDatePickerFormField(firstDate: , lastDate: lastDate)
              DateTimeFormField(
                decoration: const InputDecoration(
                  labelText: 'Enter Date',
                  border: OutlineInputBorder(),
                ),
                firstDate: DateTime.now().add(const Duration(days: 10)),
                lastDate: DateTime.now().add(const Duration(days: 40)),
                initialPickerDateTime:
                    DateTime.now().add(const Duration(days: 20)),
                onChanged: (DateTime? value) {
                  // selectedDate = value;
                },
              ),
              SizedBox(
                height: 16,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Mobile number',
                  hintText: '8854565***',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Text('Gender', style: TextStyle(fontSize: 16.0)),
                  Expanded(
                    child: RadioListTile(
                      title: Text('Male'),
                      value: 'Male',
                      groupValue: _gender,
                      onChanged: (value) {
                        setState(() {
                          _gender = value;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: RadioListTile(
                      title: Text('Female'),
                      value: 'Female',
                      groupValue: _gender,
                      onChanged: (value) {
                        setState(() {
                          _gender = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: 'abc@gmail.com',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: 16,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'Enter Secured Password',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.visiblePassword,
              ),
              Row(
                children: [
                  SizedBox(height: 24.0),
                  // Register Button

                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (ctx) => LoginScreen(),
                        ),
                      );
                    },
                    child: Text('Register'),
                  ),

                  SizedBox(height: 16.0),
                  // Reset Button
                  OutlinedButton(
                    onPressed: () {},
                    child: Text('Reset'),
                  ),
                ],
              )
            ],
          ),
        )),
      ),
    );
  }
}
