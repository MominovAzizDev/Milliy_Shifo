import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:milliy_shifo/features/products/presentation/bloc/user_bloc.dart';
import 'package:milliy_shifo/features/products/presentation/pages/register/verification.dart';

import '../../../../../core/utils/mediaquery_meneger.dart';
import '../../widgets/buttons/enter_main_button.dart';
import '../login/login.dart';

class CreateAccaunt extends StatefulWidget {
  const CreateAccaunt({super.key});

  @override
  State<CreateAccaunt> createState() => _CreateAccauntState();
}

class _CreateAccauntState extends State<CreateAccaunt> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool _obsecure = true;

  void checkEye() {
    setState(() {
      _obsecure = !_obsecure;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<UserBloc, UserState>(
      listener: (context, state) {
        if (state is UserSuccess) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Verification()),
          );
        } else if (state is UserFailure) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(state.message)));
        }
      },
      child: Scaffold(
        appBar: AppBar(backgroundColor: Colors.transparent),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaqueryMeneger.height(4),
                  child: Text(
                    "Create an account",
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
                    "Excited to have you on board!",
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
                  controller: emailController,
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
                  controller: passwordController,
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
                SizedBox(height: MediaqueryMeneger.height(5)),
                SizedBox(
                  width: MediaqueryMeneger.width(80),
                  height: MediaqueryMeneger.height(5),
                  child: EnterMainButtonPage(
                    labels: "Create an account",
                    onPressed: () {
                      context.read<UserBloc>().add(
                        RegisterSubmitted(
                          emailController.text,
                          passwordController.text,
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: MediaqueryMeneger.height(40)),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
                    );
                  },
                  child: Text(
                    "Already have an account? Log in",
                    style: TextStyle(fontSize: MediaqueryMeneger.fontSize(17)),
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

//
