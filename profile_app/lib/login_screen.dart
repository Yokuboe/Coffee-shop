import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool LoggedIn = false;
  bool _passwordVisible = false;
  late String name;
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  final _userPasswordController = TextEditingController();
  String gender = 'Male';

  void _validate() {
    final form = _formkey.currentState;
    if (!form!.validate()) {
      return;
    }
    setState(() {
      LoggedIn = true;
      name = _nameController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Center(
        child: LoggedIn ? _buildSucess() : _buildLoginForm(),
      ),
    );
  }

  Widget _buildSucess() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.check,
          color: Colors.orangeAccent,
        ),
        Text('Hi $name')
      ],
    );
  }

  Widget _buildLoginForm() {
    return Form(
        key: _formkey,
        child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: _nameController,
                  decoration: InputDecoration(labelText: 'Runner'),
                  validator: (value) {
                    return value!.isEmpty ? 'Enter the Runner\'s name.' : null;
                  },
                ),
                TextFormField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(labelText: 'Email'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Enter the runner\'s email';
                    }
                     final regex = RegExp('[^@]+@[^\.]+\..+');
                    if (!regex.hasMatch(value)) {
                      return 'Enter the valid email.';
                    }
                    return null;
                  },
                ),
               TextFormField(
   keyboardType: TextInputType.text,
   controller: _userPasswordController,
   obscureText: !_passwordVisible,
   decoration: InputDecoration(
       labelText: 'Password',
       hintText: 'Enter your password',
       
       suffixIcon: IconButton(
            icon: Icon(
              
               _passwordVisible
               ? Icons.visibility
               : Icons.visibility_off,
               color: Theme.of(context).primaryColorDark,
               ),
            onPressed: () {
               
               setState(() {
                   _passwordVisible = !_passwordVisible;
               });
             },
            ),
          ),
        ),
                DropdownButton(
                  value: gender,
                  items: [
                    DropdownMenuItem(
                      value: 'Male',
                      child: Text('Male'),
                    ),
                    DropdownMenuItem(
                      value: 'Female',
                      child: Text('Female'),
                    ),
                  ],
                  onChanged: (String? newValue) {
                    setState(() {
                      gender = newValue!;
                    });
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(onPressed: _validate, child: Text('Continue'))
              ],
            )));
  }
}
