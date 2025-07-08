import 'package:flutter/material.dart';
import 'package:new_assignment/di/di.dart';
import 'package:new_assignment/features/auth/presentation/provider/auth_provider.dart';
import 'package:new_assignment/features/auth/presentation/screens/choose_language.dart';
import 'package:new_assignment/features/auth/presentation/screens/login_screen.dart';
import 'package:new_assignment/features/main/presentation/provider/main_provider.dart';
import 'package:new_assignment/features/main/presentation/screens/video_screen.dart';
import 'package:provider/provider.dart';
import 'package:new_assignment/di/di.dart'as di;



void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await di.configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => getIt<AuthProvider>(),),
        ChangeNotifierProvider(create: (context) => getIt<MainProvider>(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home:  ChooseLanguagePage(),
      ),
    );
  }
}

