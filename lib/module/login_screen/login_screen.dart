import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:udemyproject/shared/component.dart';

class LoginScreen extends StatefulWidget
{
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
{
  TextEditingController email =  TextEditingController();
  TextEditingController password =  TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            child: Form(
              key: formKey ,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  const Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  const Text(
                    "Login Now to Start our Trip",
                    style: TextStyle(
                      color: Colors.black38,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    height: 25.0,
                  ),
                  defaultTextField(
                    controller: email ,
                    texthint: "Email Address",
                    textperfixicon: const Icon(Icons.mail),
                    validatewrongdatatext: "Please enter Right Email"
                  ),
                  const SizedBox(
                    height: 25.0,
                  ),
                  defaultTextField(
                    controller: password ,
                    texthint: "Password",
                    textperfixicon: const Icon(Icons.lock),
                      validatewrongdatatext: "Please enter Right Password"
                  ),
                  const SizedBox(
                    height: 25.0,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 60.0,
                    child: defaultMaterialButton(
                      buttoncolor: Colors.blue,
                      buttontext: "Login",
                      buttonwork: (){
                        if(formKey.currentState!.validate())
                        {

                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
