import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:pawpal/utils/constants.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Hero(
                tag: "logo",
                child: Image.asset(
                  "assets/images/logo.png",
                  width: 150,
                ),
              ),
              Text(
                "Login",
                style: kHeading2TextStyle,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                child: Form(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: TextFormField(
                          controller: emailController,
                            textAlignVertical: TextAlignVertical.center,
                            keyboardType: TextInputType.emailAddress,
                            style: kNormalTextStyle.copyWith(fontSize: 12),
                            decoration: kInputDecoration.copyWith(
                                prefixIcon: Icon(LucideIcons.user)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: TextFormField(
                          obscureText: true,
                          controller: passwordController,
                          textAlignVertical: TextAlignVertical.center,
                          keyboardType: TextInputType.emailAddress,
                          style: kNormalTextStyle.copyWith(fontSize: 12),
                          decoration: kInputDecoration.copyWith(
                            prefixIcon: Icon(LucideIcons.lock),
                            hintText: "Password",
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 30),
                        child: TextButton(
                          child: Text("Login",style: kNormalTextStyle.copyWith(fontSize: 13),),
                          onPressed: (){
                            //TODO: Implement call to Api
                            context.go('/home');
                          },
                          style: ButtonStyle(
                              elevation: MaterialStateProperty.all(6.0),
                              backgroundColor: MaterialStateProperty.all(kYellowGold),
                              padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 5, horizontal: 20)),
                              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(7)
                              ))
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
