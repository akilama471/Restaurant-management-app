import 'package:colombo_pitza/components/dls_textfield.dart';
import 'package:colombo_pitza/view/main_view.dart';
import 'package:colombo_pitza/view/register_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  LoginViewState createState() => LoginViewState();
}

class LoginViewState extends State<LoginView> {
  bool isRememberMe = false;

  final nameField = TextEditingController();
  final passwordField = TextEditingController();

  Widget buildEmail() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Email',
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 6,
                  offset: Offset(0, 2),
                )
              ]),
          height: 60,
          child: const TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(color: Colors.black87),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.email,
                  color: Color(0xfff44336),
                ),
                hintText: 'Email',
                hintStyle: TextStyle(color: Colors.black38)),
          ),
        )
      ],
    );
  }

  Widget buildPassword() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Password',
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 6,
                  offset: Offset(0, 2),
                )
              ]),
          height: 60,
          child: const TextField(
            obscureText: true,
            style: TextStyle(color: Colors.black87),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.lock,
                  color: Color(0xfff44336),
                ),
                hintText: 'Pasword',
                hintStyle: TextStyle(color: Colors.black38)),
          ),
        )
      ],
    );
  }

  Widget buildForgetPass() {
    return Container(
      alignment: Alignment.centerRight,
      child: TextButton(
        // ignore: avoid_print
        onPressed: () => print("Forget Password pressed"),
        child: const Text(
          'Forget Password',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget buildRememberMeChk() {
    return SizedBox(
        height: 20,
        child: Row(children: <Widget>[
          Theme(
            data: ThemeData(unselectedWidgetColor: Colors.white),
            child: Checkbox(
                value: isRememberMe,
                checkColor: Colors.red,
                activeColor: Colors.white,
                onChanged: (value) {
                  setState(() {
                    isRememberMe = value!;
                  });
                }),
          ),
          const Text(
            'Remember me',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          )
        ]));
  }

  Widget buildLoginBtn() {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 25),
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () => Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const MainView())),
          style: ButtonStyle(
              foregroundColor:
                  MaterialStateProperty.all<Color>(const Color(0xfff44336)),
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ))),
          child: const Padding(
              padding: EdgeInsets.all(14),
              child: Text(
                'Login',
                style: TextStyle(fontSize: 16),
              )),
        ));
  }

  Widget buildSignUpBtn() {
    return GestureDetector(
        onTap: () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const RegisterView())),
        child: RichText(
          text: const TextSpan(children: [
            TextSpan(
                text: 'Don\'t have an Account ? ',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                )),
            TextSpan(
                text: 'Sign Up',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold))
          ]),
        ));
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
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Image(
                          image: AssetImage('assets/images/logo.png'),
                          width: 150,
                        ),
                        Text(
                          'Login',
                          style: GoogleFonts.oswald(
                              textStyle: const TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        const SizedBox(height: 10),
                        DlsTextfield(
                            ctrl: nameField,
                            title: "Full Name",
                            hint: "Eull Name",
                            icon: Icons.person,
                            type: TextInputType.name,
                            isMask: false),
                        const SizedBox(height: 10),
                        DlsTextfield(
                            ctrl: passwordField,
                            title: "Password",
                            hint: "password",
                            icon: Icons.lock,
                            type: TextInputType.text,
                            isMask: true),
                        buildForgetPass(),
                        buildRememberMeChk(),
                        buildLoginBtn(),
                        buildSignUpBtn()
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
