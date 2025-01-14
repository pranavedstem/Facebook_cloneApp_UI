// import 'package:date_field/date_field.dart';
import 'package:facebookapp/screens/login.dart';
import 'package:flutter/material.dart';


class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  String? _gender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text(
          'Join Facebook',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey, // Assign form key
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Name',
                          hintText: 'Enter Your Name',
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your name';
                          }
                          return null;
                        },
                      ),
                    ),
                    const SizedBox(width: 6),
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Surname',
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your surname';
                          }
                          return null;
                        },
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Mobile number',
                    hintText: '8854565***',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your mobile number';
                    } else if (!RegExp(r'^\d{10}$').hasMatch(value)) {
                      return 'Enter a valid 10-digit mobile number';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    const Text('Gender', style: TextStyle(fontSize: 16.0)),
                    Expanded(
                      child: RadioListTile(
                        title: const Text('Male'),
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
                        title: const Text('Female'),
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
                if (_gender == null)
                  const Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Text(
                      'Please select your gender',
                      style: TextStyle(color: Colors.red, fontSize: 12),
                    ),
                  ),
                const SizedBox(height: 16),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    hintText: 'abc@gmail.com',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                      return 'Enter a valid email';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    hintText: 'Enter Secured Password',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    } else if (value.length < 6) {
                      return 'Password must be at least 6 characters long';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate() && _gender != null) {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (ctx) => const LoginScreen(),
                            ),
                          );
                        } else if (_gender == null) {
                          setState(() {}); // Trigger error for gender
                        }
                      },
                      child: const Text('Register'),
                    ),
                    OutlinedButton(
                      onPressed: () {
                        _formKey.currentState!.reset();
                        setState(() {
                          _gender = null;
                        });
                      },
                      child: const Text('Reset'),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


// class RegisterScreen extends StatefulWidget {
//   const RegisterScreen({super.key});

//   @override
//   State<RegisterScreen> createState() => _RegisterScreenState();
// }

// class _RegisterScreenState extends State<RegisterScreen> {
//   // final _formKey = GlobalKey<FormState>();
//   String? _gender;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).primaryColor,
//         title: Text(
//           'Join Facebook',
//           style: TextStyle(
//             color: Colors.white,
//           ),
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16),
//         child: Form(
//             child: SingleChildScrollView(
//           child: Column(
//             children: [
//               Row(
//                 children: [
//                   Expanded(
//                     child: TextFormField(
//                       //controller
//                       decoration: InputDecoration(
//                         labelText: 'Name',
//                         hintText: 'Enter Your Name',
//                         border: OutlineInputBorder(),
//                       ), // validator
//                     ),
//                   ),
//                   SizedBox(
//                     width: 6,
//                   ),
//                   Expanded(
//                     child: TextFormField(
//                       // controller: _surnameController,
//                       decoration: InputDecoration(
//                         labelText: 'Surname',
//                         border: OutlineInputBorder(),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(height: 16.0),
//               // InputDatePickerFormField(firstDate: , lastDate: lastDate)
//               DateTimeFormField(
//                 decoration: const InputDecoration(
//                   labelText: 'Enter Date',
//                   border: OutlineInputBorder(),
//                 ),
//                 firstDate: DateTime.now().add(const Duration(days: 10)),
//                 lastDate: DateTime.now().add(const Duration(days: 40)),
//                 initialPickerDateTime:
//                     DateTime.now().add(const Duration(days: 20)),
//                 onChanged: (DateTime? value) {
//                   // selectedDate = value;
//                 },
//               ),
//               SizedBox(
//                 height: 16,
//               ),
//               TextFormField(
//                 decoration: InputDecoration(
//                   labelText: 'Mobile number',
//                   hintText: '8854565***',
//                   border: OutlineInputBorder(),
//                 ),
//                 keyboardType: TextInputType.number,
//               ),
//               SizedBox(
//                 height: 16,
//               ),
//               Row(
//                 children: [
//                   Text('Gender', style: TextStyle(fontSize: 16.0)),
//                   Expanded(
//                     child: RadioListTile(
//                       title: Text('Male'),
//                       value: 'Male',
//                       groupValue: _gender,
//                       onChanged: (value) {
//                         setState(() {
//                           _gender = value;
//                         });
//                       },
//                     ),
//                   ),
//                   Expanded(
//                     child: RadioListTile(
//                       title: Text('Female'),
//                       value: 'Female',
//                       groupValue: _gender,
//                       onChanged: (value) {
//                         setState(() {
//                           _gender = value;
//                         });
//                       },
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 height: 16,
//               ),
//               TextFormField(
//                 decoration: InputDecoration(
//                   labelText: 'Email',
//                   hintText: 'abc@gmail.com',
//                   border: OutlineInputBorder(),
//                 ),
//                 keyboardType: TextInputType.emailAddress,
//               ),
//               SizedBox(
//                 height: 16,
//               ),
//               TextFormField(
//                 decoration: InputDecoration(
//                   labelText: 'Password',
//                   hintText: 'Enter Secured Password',
//                   border: OutlineInputBorder(),
//                 ),
//                 keyboardType: TextInputType.visiblePassword,
//               ),
//               Row(
//                 children: [
//                   SizedBox(height: 24.0),
                  

//                   ElevatedButton(
//                     onPressed: () {
//                       Navigator.of(context).pushReplacement(
//                         MaterialPageRoute(
//                           builder: (ctx) => LoginScreen(),
//                         ),
//                       );
//                     },
//                     child: Text('Register'),
//                   ),

//                   SizedBox(height: 16.0),
                 
//                   OutlinedButton(
//                     onPressed: () {},
//                     child: Text('Reset'),
//                   ),
//                 ],
//               )
//             ],
//           ),
//         )),
//       ),
//     );
//   }
// }
