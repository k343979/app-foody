import 'package:flutter/material.dart';
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
        ShaderMask(
          shaderCallback: (rect) => LinearGradient(
            begin: Alignment.center,
              end: Alignment.center,
              colors: [Colors.black, Colors.transparent]
          ).createShader(rect),
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/login_bg.png'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.black54,
                    BlendMode.darken
                )
              )
            ),
          ),
        )
      ],
    );
  }
}
