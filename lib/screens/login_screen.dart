import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Online SHOPPING')),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/images/logo3.svg',
                height: 350,
              ),
              const SizedBox(
                height: 40,
              ),
              TextField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                    labelText: 'Enter your email',
                    icon: Icon(Icons.email_outlined)),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: _passwordController,
                keyboardType: TextInputType.text,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Enter your password',
                  icon: Icon(Icons.lock_clock_outlined),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              const Row(
                children: [Spacer(), Text('Forgot your pasword?')],
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  onPressed: () {},
                  child: const SizedBox(
                      width: double.infinity,
                      child: Center(
                          child: Text(
                        'Login',
                        style: TextStyle(fontSize: 18, color: Colors.purple),
                      )))),
              const SizedBox(
                height: 24,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?"),
                   SizedBox(width: 9,),
                  Text('Sign Up',
                      style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold, color: Colors.purple))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
