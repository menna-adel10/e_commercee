import 'package:e_commercee/views/nav_bar/ui/main_home_view.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'core/app_colors.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://nsltfnyiwdiurmquqeol.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5zbHRmbnlpd2RpdXJtcXVxZW9sIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTA2NzY4NzQsImV4cCI6MjA2NjI1Mjg3NH0.hcd3FMFI8A8Al2rG7EXZdqzYDFBxwxJglFthDeOE6cE',
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Our Market',
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.kScaffoldColor,
        useMaterial3: true,
      ),
      home: MainHomeView(),
    );
  }
}
