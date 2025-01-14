import 'package:flutter/material.dart';
import 'package:facebookapp/screens/homepage.dart';
import 'package:facebookapp/screens/register.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 246, 245, 245),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Center(
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/images/facebooklogo.png'),
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                'FaceBook Login',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              const SizedBox(height: 20),
              // Email or Username Field
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Phone number, email, or username',
                  hintText: 'abc@gmail.com',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email or username';
                  } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+$').hasMatch(value)) {
                    return 'Enter a valid email';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              // Password Field
              TextFormField(
                controller: _passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  hintText: 'Enter secure password',
                ),
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
              const SizedBox(height: 8),
              FilledButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (ctx) => const HomePageScreen(),
                      ),
                    );
                  }
                },
                child: const Text('Log in'),
              ),
              const SizedBox(height: 8),
              TextButton(
                onPressed: () {
                  
                },
                child: const Text(
                  'Forgotten Password?',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            OutlinedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctx) => const RegisterScreen(),
                  ),
                );
              },
              child: const Text('Create new account'),
            ),
            Column(
              children: [
                Center(
                  child: Text('Meta')
                  //  Image.asset(
                  //   'assets/images/meta.png',
                  //   width: 60,
                  //   height: 80,
                  // ),
                ),
                const SizedBox(height: 10),
                const Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('About', style: TextStyle(fontSize: 10)),
                      SizedBox(width: 5),
                      Text('Help', style: TextStyle(fontSize: 10)),
                      SizedBox(width: 5),
                      Text('More', style: TextStyle(fontSize: 10)),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}





// import 'package:facebookapp/screens/homepage.dart';
// import 'package:facebookapp/screens/register.dart';
// import 'package:flutter/material.dart';

// class LoginScreen extends StatefulWidget {
//   const LoginScreen({super.key});

//   @override
//   State<LoginScreen> createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {
//   @override
//   Widget build(BuildContext context) {
//     // final screenHeight = MediaQuery.of(context).size.height;
//     return Scaffold(
//       backgroundColor: const Color.fromARGB(255, 246, 245, 245),
//       body: Padding(
//         padding: const EdgeInsets.all(20),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Center(
//               child: CircleAvatar(
//                 radius: 50,
//                 backgroundImage: AssetImage('assets/images/facebooklogo.png'),
//               ),
//             ),
//             SizedBox(
//               height: 30,
//             ),
//             Text(
//               textAlign: TextAlign.center,
//               'FaceBook Login',
//               style: TextStyle(
//                 fontWeight: FontWeight.bold,
//                 fontSize: 15,
//               ),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             TextField(
//               decoration: InputDecoration(
//                   border: OutlineInputBorder(),
//                   labelText: 'Phone number , email or username',
//                   hintText: 'abc@gmail.com'),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             TextField(
//               decoration: InputDecoration(
//                   border: OutlineInputBorder(),
//                   labelText: 'Password',
//                   hintText: 'Enter secure password'),
//             ),
//             SizedBox(
//               height: 8,
//             ),
//             FilledButton(
//               onPressed: () {
//                 Navigator.of(context).pushReplacement(
//                   MaterialPageRoute(
//                     builder: (ctx) => HomePageScreen(),
//                   ),
//                 );
//               },
//               child: Text('Log in'),
//             ),
//             SizedBox(
//               height: 8,
//             ),
//             TextButton(
//               onPressed: () {},
//               child: Text(
//                 'Forgotten Password?',
//                 style: TextStyle(color: Colors.black),
//               ),
//             ),
//           ],
//         ),
//       ),
//       bottomNavigationBar: Padding(
//         padding: const EdgeInsets.only(bottom: 8),
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             OutlinedButton(
//               onPressed: () {
//                 Navigator.of(context).push(
//                   MaterialPageRoute(
//                     builder: (ctx) => RegisterScreen(),
//                   ),
//                 );
//               },
//               child: Text('Create new account'),
//             ),
//             Column(
//               children: [
//                 Center(
//                   child: Image.asset(
//                     'assets/images/meta.png',
//                     width: 60,
//                     height: 80,
//                   ),
//                 ),
//                 SizedBox(
//                   height: 2,
//                 ),
//                 Center(
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     // crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         'About',
//                         style: TextStyle(fontSize: 10),
//                       ),
//                       SizedBox(
//                         width: 5,
//                       ),
//                       Text(
//                         'Help',
//                         style: TextStyle(fontSize: 10),
//                       ),
//                       SizedBox(
//                         width: 5,
//                       ),
//                       Text(
//                         'More',
//                         style: TextStyle(fontSize: 10),
//                       )
//                     ],
//                   ),
//                 )
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
