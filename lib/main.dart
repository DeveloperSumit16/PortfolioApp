import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:odyssey/provider/drawer_state.dart';
import 'package:provider/provider.dart';
import 'screens/home.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => DrawerState()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portfolio App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 25, 190, 44)),
        useMaterial3: true,
      ),
      home: const MyPortfolio(),
    );
  }
}
