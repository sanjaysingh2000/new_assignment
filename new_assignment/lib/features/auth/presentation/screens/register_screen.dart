import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_assignment/core/widgets/big_blue_button.dart';
import 'package:new_assignment/core/widgets/custom_input_field.dart';
import 'package:new_assignment/features/auth/presentation/provider/auth_provider.dart';
import 'package:new_assignment/features/auth/presentation/screens/verify_screen.dart';
import 'package:new_assignment/gen/assets.gen.dart';
import 'package:provider/provider.dart';

import '../../data/model/register_data.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController whatsappNumberController =
      TextEditingController();
  final TextEditingController mobileNumberController = TextEditingController();

  bool isAgree = false;

  @override
  void dispose() {
    super.dispose();
    userNameController.dispose();
    passwordController.dispose();
    emailController.dispose();
    whatsappNumberController.dispose();
    mobileNumberController.dispose();
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
                            'Please register to continue',
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
                            hintText: 'Name',
                            controller: userNameController,
                            keyboardType: TextInputType.text,
                            imgPath: Assets.icons.nameIcon.path,
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          customInputField(
                            hintText: 'Email Address',
                            controller: emailController,
                            keyboardType: TextInputType.text,
                            imgPath: Assets.icons.msgIcon.path,
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          customInputField(
                            hintText: 'Password',
                            controller: passwordController,
                            keyboardType: TextInputType.text,
                            imgPath: Assets.icons.passIcon.path,
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          customInputField(
                            hintText: 'Whatsapp Number',
                            controller: whatsappNumberController,
                            keyboardType: TextInputType.phone,
                            imgPath: Assets.icons.whatsappIcon.path,
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          customInputField(
                            hintText: 'Mobile Number',
                            controller: mobileNumberController,
                            keyboardType: TextInputType.phone,
                            imgPath: Assets.icons.mobileIcon.path,
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          Row(
                            children: [
                              Checkbox(
                                value: isAgree,
                                onChanged: (value) {
                                  setState(() {
                                    isAgree = !isAgree;
                                  });
                                },
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Text.rich(
                                TextSpan(
                                  text: 'I agree to the ',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: const Color(0xFF666666),
                                    fontWeight: FontWeight.w400,
                                    fontFamily: GoogleFonts.inter().fontFamily,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: 'Terms and Conditions',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: const Color(0xFF2563EB),
                                        fontWeight: FontWeight.w500,
                                        fontFamily:
                                            GoogleFonts.inter().fontFamily,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          Text.rich(
                            TextSpan(
                              text: 'Already have an account? ',
                              style: TextStyle(
                                fontSize: 14,
                                color: const Color(0xFF666666),
                                fontWeight: FontWeight.w400,
                                fontFamily: GoogleFonts.inter().fontFamily,
                              ),
                              children: [
                                TextSpan(
                                  text: 'Sign In',
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
                              final registeredData = RegisterData(
                                name: userNameController.text.trim(),
                                email: emailController.text.trim(),
                                password: passwordController.text.trim(),
                                whatsappNumber:
                                    whatsappNumberController.text.trim(),
                                mobileNumber:
                                    mobileNumberController.text.trim(),
                              );
                              provider.setRegisterData(registeredData);
                              await provider
                                  .sendOtp(emailController.text.trim())
                                  .then(
                                (value) {
                                  if (value != null) {
                                    Navigator.push(context, MaterialPageRoute(
                                      builder: (context) {
                                        return const VerifyOtpScreen();
                                      },
                                    ));
                                  }
                                },
                              ).catchError((error){
                                 if (error is DioException) {
                                  final msg = error.response?.data['message'].toString();
                                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg??'')));
                                 }
                              });

                              // // provider.userEmail = emailController.text.trim();
                              // // provider
                              // //     .sendOtp(emailController.text.trim())
                              // //     .then(
                              // //   (value) {
                              // //     Navigator.push(context, MaterialPageRoute(
                              // //       builder: (context) {
                              // //         return const VerifyOtpScreen();
                              // //       },
                              // //     ));
                              // //     ScaffoldMessenger.of(context).showSnackBar(
                              // //       SnackBar(content: Text(value.toString())),
                              // //     );
                              //   },
                              // ).catchError((error) {
                              //   if (error is DioException) {
                              //     final msg = error.response?.data['message']
                              //             ?.toString() ??
                              //         error.message ??
                              //         'Network error';

                              //     ScaffoldMessenger.of(context).showSnackBar(
                              //       SnackBar(content: Text(msg)),
                              //     );
                              //   }
                              // });
                            },
                            text: 'Register',
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
