import 'package:dio/dio.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_assignment/core/widgets/big_blue_button.dart';
import 'package:new_assignment/core/widgets/custom_input_field.dart';
import 'package:new_assignment/features/auth/presentation/provider/auth_provider.dart';
import 'package:new_assignment/features/auth/presentation/screens/register_screen.dart';
import 'package:new_assignment/features/main/presentation/screens/video_screen.dart';
import 'package:new_assignment/gen/assets.gen.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  bool isAgree = false;

  @override
  void dispose() {
    super.dispose();
    passwordController.dispose();
    emailController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<AuthProvider>();
    return Scaffold(
      body: SafeArea(
        child: provider.isLoading
            ? const Center(
                child: CircularProgressIndicator(
                  color: Colors.blue,
                ),
              )
            : SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 24,
                    ),
                    Image.asset(
                      Assets.images.logo.path,
                      width: 228,
                      height: 68,
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 14),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black.withOpacity(0.5),
                          width: 1,
                        ),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 24,
                          ),
                          Text(
                            'Welcome!',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              fontFamily: GoogleFonts.inter().fontFamily,
                            ),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Text(
                            'Please sign-in to continue',
                            style: TextStyle(
                              fontSize: 15,
                              color: const Color(0xFF666666),
                              fontWeight: FontWeight.w400,
                              fontFamily: GoogleFonts.inter().fontFamily,
                            ),
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          customInputField(
                            hintText: 'Email Address',
                            controller: emailController,
                            keyboardType: TextInputType.text,
                            imgPath: Assets.icons.nameIcon.path,
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          customInputField(
                            hintText: 'password',
                            controller: passwordController,
                            keyboardType: TextInputType.text,
                            imgPath: Assets.icons.msgIcon.path,
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Text(
                              'Forget Password?',
                              style: TextStyle(
                                fontSize: 14,
                                color: const Color(0xFF2563EB),
                                fontWeight: FontWeight.w500,
                                fontFamily: GoogleFonts.inter().fontFamily,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          Text.rich(
                            TextSpan(
                              text: 'Don’t have an account? ',
                              style: TextStyle(
                                fontSize: 14,
                                color: const Color(0xFF666666),
                                fontWeight: FontWeight.w400,
                                fontFamily: GoogleFonts.inter().fontFamily,
                              ),
                              children: [
                                TextSpan(
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      Navigator.push(context, MaterialPageRoute(
                                        builder: (context) {
                                          return const RegisterScreen();
                                        },
                                      ));
                                    },
                                  text: 'Sign Up',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: const Color(0xFF2563EB),
                                    fontWeight: FontWeight.w500,
                                    fontFamily: GoogleFonts.inter().fontFamily,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          bigBlueButton(
                            onPressed: () async {
                              await provider
                                  .login(emailController.text.trim(),
                                      passwordController.text.trim())
                                  .then(
                                (value) {
                                  if (value != null) {
                                    Navigator.pushAndRemoveUntil(context,
                                        MaterialPageRoute(
                                      builder: (context) {
                                        return const VideoScreen();
                                      },
                                    ), (route) => false,);
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(content: Text(value.message)),
                                    );
                                  }
                                },
                              ).catchError((error) {
                                if (error is DioException) {
                                  final msg = error.response?.data['message']
                                          ?.toString() ??
                                      error.message ??
                                      'Network error';

                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(content: Text(msg)),
                                  );
                                }
                              });
                            },
                            text: 'Sign In',
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
      ),
    );
  }
}
