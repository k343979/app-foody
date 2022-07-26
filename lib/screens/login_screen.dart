import 'package:app_foody/widgets/password_input.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../pallete.dart';
import '../widgets/widgets.dart';

class LoginScreen extends StatelessWidget {
  // const LoginScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackGroundImage(
            image: 'assets/images/login_bg.png',
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              Flexible(
                  child: Center(
                    child: Text(
                      'App Foody',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextInputField(
                    icon: FontAwesomeIcons.envelope,
                    hint: 'Email',
                    inputType: TextInputType.emailAddress,
                    inputAction: TextInputAction.next,
                  ),
                  PasswordInput(
                    icon: FontAwesomeIcons.lock,
                    hint: 'Password',
                    inputAction: TextInputAction.done,
                  ),
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, 'register'),
                    child: Text(
                      'Forget Password',
                      style: kbodyText,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  RoundedButton(
                    buttonName: 'Login',
                  ),
                  SizedBox(
                    height: 25,
                  ),
                ],
              ),
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, 'register'),
                child: Container(
                  child: Text(
                    'Create New Account',
                    style: kbodyText,
                  ),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        width: 1,
                        color: kWhite,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        )
      ],
    );
  }
}
