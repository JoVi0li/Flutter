import 'package:flutter/material.dart';
import 'package:sp_medical_group/src/controllers/loginController.dart';
import 'package:sp_medical_group/src/views/list.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  LoginController loginController = new LoginController();
  late String emailValue;
  late String senhaValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/logo.png"),
            Divider(
              height: 50,
              color: Colors.white,
            ),
            Text(
              "Bem-Vindo!",
              style: TextStyle(
                  color: Color.fromRGBO(131, 190, 223, 1),
                  fontSize: 36,
                  fontWeight: FontWeight.bold),
            ),
            Divider(
              height: 80,
              color: Colors.white,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * .90,
              height: 100,
              child: TextField(
                onChanged: (textEmail) {
                  emailValue = textEmail;
                },
                autofocus: false,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    labelText: "E-mail",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5))),
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * .90,
              height: 100,
              child: TextField(
                onChanged: (textSenha) {
                  senhaValue = textSenha;
                },
                autofocus: false,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  labelText: "Senha",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)),
                ),
                keyboardType: TextInputType.visiblePassword,
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => Lista()),
                    (route) => false);
              },
              child: Text("Entrar"),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  Color.fromRGBO(131, 190, 223, 1),
                ),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                fixedSize: MaterialStateProperty.all<Size>(Size(250, 60)),
                textStyle: MaterialStateProperty.all<TextStyle>(
                  TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
