import 'package:flutter/material.dart';
import 'package:new_assignment/core/widgets/big_blue_button.dart';
import 'package:new_assignment/features/auth/presentation/screens/login_screen.dart';

class ChooseLanguagePage extends StatefulWidget {
  @override
  _ChooseLanguagePageState createState() => _ChooseLanguagePageState();
}

class _ChooseLanguagePageState extends State<ChooseLanguagePage> {
  String _selectedLanguage = 'English';

  final List<Map<String, String>> _languages = [
    {'name': 'English', 'translation': 'Hi'},
    {'name': 'Hindi', 'translation': 'नमस्ते'},
    {'name': 'Bengali', 'translation': 'হ্যালো'},
    {'name': 'Kannada', 'translation': 'ನಮಸ್ಕಾರ'},
    {'name': 'Punjabi', 'translation': 'ਸਤ ਸ੍ਰੀ ਅਕਾਲ'},
    {'name': 'Tamil', 'translation': 'வணக்கம்'},
    {'name': 'Telugu', 'translation': 'హలో'},
    {'name': 'French', 'translation': 'Bonjour'},
    {'name': 'Spanish', 'translation': 'Hola'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Text(
              'Choose Your Language',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: ListView.builder(
                    itemCount: _languages.length,
                    itemBuilder: (context, index) {
                      final language = _languages[index];
                      return RadioListTile<String>(
                        controlAffinity: ListTileControlAffinity.trailing,
                        value: language['name'] ?? '',
                        groupValue: _selectedLanguage,
                        onChanged: (value) {
                          setState(() {
                            _selectedLanguage = value!;
                          });
                        },
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              language['name'] ?? '',
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              language['translation'] ?? '',
                              style: const TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
              child: bigBlueButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: 
                (context) {
                  return const LoginScreen();
                },));
              }, text: 'Select'))
          ],
        ),
      ),
    );
  }
}
