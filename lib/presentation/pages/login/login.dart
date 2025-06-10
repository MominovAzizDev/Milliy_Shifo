import 'package:flutter/material.dart';
import 'package:milliy_shifo/core/utils/mediaquery_meneger.dart';
import 'package:milliy_shifo/presentation/pages/login/verificationcode.dart';

import '../../widgets/buttons/enter_main_button.dart';
import '../register/create_accaunt.dart';
import 'forgot_password.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _obsecure = true;
  bool _checkbutton = true;

  void buttonCheck() {
    setState(() {
      _checkbutton = !_checkbutton;
    });
  }

  void checkEye() {
    setState(() {
      _obsecure = !_obsecure;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaqueryMeneger.height(5),
                child: Text(
                  "Log in",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: MediaqueryMeneger.fontSize(25),
                  ),
                ),
              ),
              SizedBox(height: MediaqueryMeneger.height(2)),
              SizedBox(
                height: MediaqueryMeneger.height(4),
                child: Text(
                  "Nice to have you back!",
                  style: TextStyle(fontSize: MediaqueryMeneger.fontSize(15)),
                ),
              ),
              Text(
                "Email",
                style: TextStyle(
                  fontSize: MediaqueryMeneger.fontSize(17),
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter your email",
                ),
              ),
              SizedBox(height: MediaqueryMeneger.height(2)),
              Text(
                "Password",
                style: TextStyle(
                  fontSize: MediaqueryMeneger.fontSize(17),
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextField(
                obscureText: _obsecure,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter your password",
                  suffixIcon: IconButton(
                    onPressed: checkEye,
                    icon: Icon(
                      _obsecure ? Icons.visibility_off : Icons.visibility,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ForgotPassword(),
                        ),
                      );
                    },
                    child: Text("Forgot password?"),
                  ),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: _checkbutton,
                    onChanged: (value) => buttonCheck(),
                  ),
                  Text(
                    "Keep me signed in",
                    style: TextStyle(fontSize: MediaqueryMeneger.fontSize(15)),
                  ),
                ],
              ),
              SizedBox(height: MediaqueryMeneger.height(3)),
              SizedBox(
                width: MediaqueryMeneger.width(80),
                height: MediaqueryMeneger.height(5),
                child: EnterMainButtonPage(
                  labels: "Log in",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Verificationcode(),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: MediaqueryMeneger.height(5)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: MediaqueryMeneger.width(20),
                    child: Image.asset("assets/succesfully/faceID.png"),
                  ),
                ],
              ),
              SizedBox(height: MediaqueryMeneger.height(20)),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CreateAccaunt()),
                  );
                },
                child: Text(
                  "Are you new here? Create account",
                  style: TextStyle(fontSize: MediaqueryMeneger.fontSize(17)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
