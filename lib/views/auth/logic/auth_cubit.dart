import 'dart:developer';

import 'package:e_commercee/views/auth/logic/auth_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthenticationCubit extends Cubit<AuthenticationState>{
  AuthenticationCubit() : super(AuthenticationInitial());

  SupabaseClient client = Supabase.instance.client;

  Future<void> login({required String email, required String password})async{
    emit(LoginLoading());
    try{
      await client.auth.signInWithPassword(password: password, email: email);
      emit(LoginSuccess());
    }
    on AuthException catch(e) {
      log(e.toString());
      emit(LoginError(e.message));
    }catch(e){
      log(e.toString());
      emit(LoginError(e.toString()));
    }
    }
  }

