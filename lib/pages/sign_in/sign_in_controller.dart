import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:online_course_app/common/entities/entities.dart';
import 'package:online_course_app/common/global_loader/global_loader.dart';
import 'package:online_course_app/common/widgets/popup_messages.dart';
import 'package:online_course_app/pages/sign_in/notifier/sign_in_notifier.dart';

class SignInController {
  WidgetRef ref;
  SignInController(this.ref);
  Future<void> handleSignIn() async {
    var state = ref.read(signInNotifierProvider);
    String email = state.email;
    String password = state.password;
    print('Email: $email, Password: $password');

    if (state.email.isEmpty || email.isEmpty) {
      toastInfo(msg: 'Your email is empty');
      return;
    }

    if (state.password.isEmpty || password.isEmpty) {
      toastInfo(msg: 'Your password is empty');
      return;
    }

    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      if (credential.user == null) {
        toastInfo(msg: 'User not found');
      }
      if (!credential.user!.emailVerified) {
        toastInfo(msg: 'Please verify your email');
      }
      if (credential.user != null) {
        String? displayName = credential.user!.displayName;
        String? email = credential.user!.email;
        String? photoURL = credential.user!.photoURL;
        String? id = credential.user!.uid;
        LoginRequestEntity loginRequestEntity = LoginRequestEntity(
            name: displayName,
            email: email,
            avatar: photoURL,
            open_id: id,
            type: 1);
        asyncPostAllData(loginRequestEntity);
      } else {
        toastInfo(msg: 'Login failed');
      }
    } catch (e) {}
  }

  void asyncPostAllData(LoginRequestEntity loginRequestEntity) {
    ref.read(appLoaderProvider.notifier).setLoaderValue(true);

    ref.read(appLoaderProvider.notifier).setLoaderValue(false);
  }
}
