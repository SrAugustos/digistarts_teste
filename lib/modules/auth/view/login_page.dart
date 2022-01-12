import 'package:digistarts_teste/modules/auth/controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<AuthController>(context);
    return Scaffold(
      body: Center(
        child: Card(
          child: Container(
            height: 300,
            width: 400,
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                TextFormField(
                  controller: email,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    icon: Icon(Icons.mail),
                    labelText: 'Email',
                  ),
                ),
                Divider(),
                TextFormField(
                  obscureText: true,
                  controller: password,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    icon: Icon(Icons.vpn_key),
                    labelText: 'Password',
                  ),
                ),
                Divider(),
                ElevatedButton(
                    onPressed: () {
                      controller.auth(email.text, password.text);
                      Navigator.of(context).pushNamed('/auth');
                    },
                    child: Text('Login'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
