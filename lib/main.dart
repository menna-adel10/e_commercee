import 'package:e_commercee/views/auth/logic/auth_cubit.dart';
import 'package:e_commercee/views/auth/ui/login_view.dart';
import 'package:e_commercee/views/nav_bar/ui/main_home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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

  @override
  Widget build(BuildContext context) {
    SupabaseClient client = Supabase.instance.client;

    return BlocProvider(
      create: (context)=> AuthenticationCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Our Market',
        theme: ThemeData(
          scaffoldBackgroundColor: AppColors.kScaffoldColor,
          useMaterial3: true,
        ),
        home: client.auth.currentUser!= null ? MainHomeView(): LoginView(),
      ),
    );
  }
}
