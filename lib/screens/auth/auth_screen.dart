import 'package:flutter/material.dart';

import '../../widgets/custom_widgets/custom_card.dart';
import 'package:famille/widgets/custom_widgets/custom_text_field.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Hoşgeldiniz',
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg2.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: CustomCard(
            SizedBox(
              height: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomTextField(
                    controller: emailController,
                    hintText: 'Email',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomTextField(
                    controller: passwordController,
                    hintText: 'Şifre',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Giriş Yap'),
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
