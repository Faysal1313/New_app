import 'package:flutter/material.dart';
import 'package:udemy/shared/components/component.dart';

// ignore: camel_case_types
class Login_screen extends StatefulWidget {
  const Login_screen({Key? key}) : super(key: key);
  @override
  State<Login_screen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Login_screen> {
  // ignore: non_constant_identifier_names
  var EmailControls = TextEditingController();
  var passControls = TextEditingController();
  bool ispassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),

                    defaultFromField(
                        controller: EmailControls,
                        type: TextInputType.emailAddress,
                        txt: 'Email Address',
                        prefiex: Icons.email),

                    SizedBox(
                      height: 10,
                    ),
                    // TextField(
                    //   controller: passControls,
                    //   obscureText: true,
                    //   keyboardType: TextInputType.emailAddress,
                    //   decoration: InputDecoration(
                    //     labelText: 'Password',
                    //     prefixIcon: Icon(
                    //       Icons.lock,
                    //     ),
                    //     suffixIcon: Icon(
                    //       Icons.remove_red_eye,
                    //     ),
                    //     border: OutlineInputBorder(),
                    //   ),
                    // ),
                    defaultFromField(
                      controller: passControls,
                      type: TextInputType.visiblePassword,
                      txt: 'Password',
                      prefiex: Icons.lock,
                      suffix: Icons.remove_red_eye,
                      IsPassword: ispassword,
                      suffixPress: () {
                        setState(() {
                          ispassword = !ispassword;
                          //ispassword = true;
                          print(ispassword.toString());
                        });
                      },
                    ),

                    SizedBox(
                      height: 20,
                    ),
                    defaulteButton(
                        function: () {
                          print(EmailControls.text);
                          print(passControls.text);
                          //print('asadasdasdasdasdasd');
                        },
                        txt: 'login'),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'don\'t have Account ',
                          style: TextStyle(color: Colors.black),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Regester Now',
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                      ],
                    )
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
