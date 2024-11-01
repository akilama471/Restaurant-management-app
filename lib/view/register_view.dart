import 'dart:convert';

import 'package:restaurant_manager/components/dls_actionbtn.dart';
import 'package:restaurant_manager/components/dls_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:restaurant_manager/view/login_view.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  RegisterViewState createState() => RegisterViewState();
}

class RegisterViewState extends State<RegisterView> {
  late String imei;

  final nameField = TextEditingController();
  final emailField = TextEditingController();
  final passwordField = TextEditingController();

  Future registrationUser() async {
    // url to registration php script
    var apiUrl = 'http://10.0.2.2/colombo_pitza_api/registration.php';

    //json maping user entered details
    Map mapeddate = {
      'name': nameField.text,
      'email': emailField.text,
      'password': passwordField.text,
      'imei': "1234567890",
    };
    //send  data using http post to our php code
    http.Response reponse = await http.post(Uri.parse(apiUrl), body: mapeddate);

    //getting response from php code, here
    // ignore: unused_local_variable
    var data = jsonDecode(reponse.body);
  }

  Widget buildHaveAccount() {
    return Container(
      alignment: Alignment.centerRight,
      child: TextButton(
        // ignore: unnecessary_this
        onPressed: () => Navigator.of(this.context).pushReplacement(
            MaterialPageRoute(builder: (context) => const LoginView())),
        child: const Text(
          'All Ready Have Account',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                      Color(0x66f44336),
                      Color(0x99f44336),
                      Color(0xccf44336),
                      Color(0xfff44336),
                    ])),
                child: SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Image(
                          image: AssetImage('assets/images/logo.png'),
                          width: 150,
                        ),
                        Text(
                          'Register',
                          style: GoogleFonts.oswald(
                              textStyle: const TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        //buildFullName(),
                        DlsTextfield(
                            ctrl: nameField,
                            title: "Full Name",
                            hint: "Eull Name",
                            icon: Icons.person,
                            type: TextInputType.name,
                            isMask: false),
                        const SizedBox(height: 20),
                        DlsTextfield(
                            ctrl: emailField,
                            title: "Email",
                            hint: "Email",
                            icon: Icons.mail,
                            type: TextInputType.emailAddress,
                            isMask: false),
                        const SizedBox(height: 20),
                        DlsTextfield(
                            ctrl: passwordField,
                            title: "Password",
                            hint: "password",
                            icon: Icons.lock,
                            type: TextInputType.text,
                            isMask: true),
                        buildHaveAccount(),
                        DlsActionbtn(
                            title: "Register", onPressAction: registrationUser)
                      ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
