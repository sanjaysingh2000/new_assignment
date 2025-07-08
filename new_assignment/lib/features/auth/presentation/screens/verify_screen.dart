import 'package:dio/dio.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_assignment/core/widgets/big_blue_button.dart';
import 'package:new_assignment/features/auth/presentation/provider/auth_provider.dart';
import 'package:new_assignment/features/auth/presentation/screens/register_screen.dart';
import 'package:new_assignment/gen/assets.gen.dart';
import 'package:pinput/pinput.dart';
import 'package:provider/provider.dart';

class VerifyOtpScreen extends StatefulWidget {
  const VerifyOtpScreen({super.key});

  @override
  State<VerifyOtpScreen> createState() => _VerifyOtpScreenState();
}

class _VerifyOtpScreenState extends State<VerifyOtpScreen> {
  // bool isAgree = false;
  final TextEditingController otpController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    otpController.dispose();
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
                            'Whatsapp OTP Verification',
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
                            'Please ensure that the email id mentioned is valid as we have sent an OTP to your email.',
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
                          Pinput(
                            controller: otpController,
                            length: 6,
                            defaultPinTheme: PinTheme(
                              width: 56,
                              height: 56,
                              textStyle: const TextStyle(
                                  fontSize: 20, color: Colors.black),
                              decoration: BoxDecoration(
                                color: const Color(0xFFCBD5E1),
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            onCompleted: (pin) => print('Completed: $pin'),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Text.rich(
                            TextSpan(
                              text: "Didn't receive OTP code?",
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
                                  text: 'Resend OTP',
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
                                  .verifyOtp(provider.registerData?.email ?? '',
                                      otpController.text.trim())
                                  .catchError((error) {
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
                            text: 'Verify',
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
