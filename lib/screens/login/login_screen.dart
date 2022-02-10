import 'package:delivery/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 0, top: 15),
                child: Image.asset(
                  'assets/images/logo1.png',
                  height: size.height / 8,
                  width: size.width / 2,
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: SvgPicture.asset(
                      'assets/icons/delivery-truck.svg',
                      height: size.height / 3,
                      width: size.width / 5,
                    ),
                  ),
                ],
              ),

              Row(
                mainAxisSize: MainAxisSize.max,
                children: const [
                  Text(
                    'Welcome!',
                    style: TextStyle(
                      fontSize: 36,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: const [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 24),
                      child: Text(
                        'To the future of transportation',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              CustomForm(
                controller: emailController,
                labelText: 'Email Address',
                hintText: 'Enter your email here...',
                obsecure: false,
              ),
              CustomForm(
                controller: controller,
                labelText: 'Password',
                hintText: 'Enter your password...',
                obsecure: true,
              ),

              // Generated code for this Button-Login Widget...
              const SizedBox(height: 22),
              SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(primary: primaryColor),
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      )))
            ],
          ),
        ],
      ),
    );
  }
}

class CustomForm extends StatelessWidget {
  const CustomForm({
    Key? key,
    required this.controller,
    this.hintText,
    this.labelText,
    this.obsecure,
  }) : super(key: key);

  final TextEditingController controller;
  final String? hintText;
  final String? labelText;
  final bool? obsecure;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: TextFormField(
              controller: controller,
              obscureText: obsecure!,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: labelText,
                labelStyle: const TextStyle(
                  color: Color(0xFF95A1AC),
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
                hintText: hintText,
                hintStyle: const TextStyle(
                  color: Color(0xFF95A1AC),
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Color(0xFFDBE2E7),
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Color(0xFFDBE2E7),
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                filled: true,
                fillColor: Colors.white,
                contentPadding:
                    const EdgeInsetsDirectional.fromSTEB(16, 24, 0, 24),
              ),
              style: const TextStyle(
                color: Color(0xFF2B343A),
                fontSize: 14,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
