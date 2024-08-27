import 'package:ecoharmony/components/home/main_page.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _firstNameController = TextEditingController();
  TextEditingController _lastNameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text('Register',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 40, left: 20, right: 20, bottom: 20),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 150,
                  width: 150,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://agenciescdn.notifyvisitors.com/agencies/wp-content/uploads/2021/03/8aea0c90140477fd3e2fab06f59e253d1484908237.jpg'),
                    ),
                  ),
                ),
                TextFormField(
                  controller: _emailController,
                  validator: (value) {
                    if (value == null) {
                      return 'Please enter your email';
                    }
                    if (value.isNotEmpty && value != 'gmail@.com') {
                      return 'Please enter your email';
                    }
                    if (value.isNotEmpty && value == 'gmail@.com') {
                      return null;
                    }
                  },
                  decoration: const InputDecoration(
                    labelText: 'Email',
                  ),
                ),
                TextFormField(
                  controller: _firstNameController,
                  validator: (value) {
                    if (value == null) {
                      return 'Please enter your first name';
                    }
                    if (value.isNotEmpty && value != 'Saurabh') {
                      return 'Please enter your right fname';
                    }
                    if (value.isNotEmpty && value == 'Saurabh') {
                      return null;
                    }
                  },
                  decoration: const InputDecoration(
                    labelText: 'First Name',
                  ),
                ),
                TextFormField(
                  controller: _lastNameController,
                  validator: (value) {
                    if (value == null) {
                      return 'Please enter your last name';
                    }
                    if (value.isNotEmpty && value != 'Raghuvanshi') {
                      return 'Please enter your right Lname';
                    }
                    if (value == 'Raghuvanshi' && value.isNotEmpty) {
                      return null;
                    }
                  },
                  decoration: const InputDecoration(
                    labelText: 'Last Name',
                  ),
                ),
                TextFormField(
                  controller: _passwordController,
                  validator: (value) {
                    if (value == null) {
                      return 'Please enter a password';
                    }
                    if (value.isNotEmpty && value == '1234') {
                      return null;
                    }
                  },
                  decoration: const InputDecoration(
                    labelText: 'Password',
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: _confirmPasswordController,
                  validator: (value) {
                    if (value == null) {
                      return 'Please enter password';
                    }
                    if (value != _passwordController.text) {
                      return 'Passwords do not match';
                    }
                    return null;
                  },
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: 'Confirm Password',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: SizedBox(
                    height: 50,
                    width: 480,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Searchbar()));
                        }
                      },
                      child: const Text('SignUp'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
