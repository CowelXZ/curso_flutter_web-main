import 'views/landing_view.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://gyojjvkrshpwdyjfplzi.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imd5b2pqdmtyc2hwd2R5amZwbHppIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzI5MTcwOTQsImV4cCI6MjA0ODQ5MzA5NH0.NLkgbf2Ns0XJcCtw1ZAkhQfQU6YJATQUmfO7nezhXr4.yrX23ncF2_Eyi4Uc31Xum7CaAR6UWsTCynexXUeFwQ4',
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        textTheme: GoogleFonts.anaheimTextTheme(),
      ),
      home: const LandingView(),
    );
  }
}
