import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:toast/toast.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:pawpal/services/auth.dart';
import 'package:pawpal/utils/constants.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  AuthService authService = AuthService();



  @override
  Widget build(BuildContext context) {

    ToastContext().init(context);

    final snackBar = SnackBar(
      content: const Text('Registeration Successful'),
      action: SnackBarAction(
        label: 'Login',
        onPressed: () {
          context.pushReplacement('/auth/login');
        },
      ),
    );

    return Scaffold(
      appBar: AppBar(),
      // resizeToAvoidBottomInset: false,

      body: SafeArea(
        child: SingleChildScrollView(
          reverse: true,
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
                  "Register",
                  style: kHeading2TextStyle,
                ),

                Container(
                  margin: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  child: Form(
                    key: _formKey,
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
                                  prefixIcon: Icon(LucideIcons.user),
                              ),
                            validator: (value) {
                              if (value==null || value.isEmpty || !value.contains("@")) {
                                return 'Enter Email';
                              }
                              return null;
                            },
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
                            validator: (value) {
                              if (value==null || value.isEmpty ) {
                                return 'Enter Password';
                              }
                              return null;
                            },
                          ),
                        ),

                        Container(
                          margin: EdgeInsets.symmetric(vertical: 30),
                          child: TextButton(
                            child: Text(
                              "Register",
                              style: kNormalTextStyle.copyWith(fontSize: 13),
                            ),
                            onPressed: () async {
                              //TODO: Implement Api call
                              if (_formKey.currentState!.validate()) {

                                if(await authService.register(emailController.text, passwordController.text)){
                                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                }
                                else{
                                  Toast.show(
                                      "Something went wrong !",
                                      duration: Toast.lengthShort,
                                      gravity:  Toast.bottom,
                                      backgroundColor: Colors.redAccent.shade100
                                  );
                                }

                              }
                            },
                            style: ButtonStyle(
                                elevation: MaterialStateProperty.all(6.0),
                                backgroundColor:
                                    MaterialStateProperty.all(kYellowGold),
                                padding: MaterialStateProperty.all(
                                    EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 20)),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(7)),
                                ),
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
      ),
    );
  }
}
