import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:online_course_app/common/widgets/popup_messages.dart';
import 'package:online_course_app/pages/sign_up/notifier/register_notifier.dart';

class SignUpController {
  final WidgetRef ref;
  SignUpController({required this.ref});
  Future<void> handleSignUp() async {
    var state = ref.read(registerNotifierProvider);
    String userName = state.userName;
    String email = state.email;
    String password = state.password;
    String rePassword = state.rePassword;
    print('userName: $userName');
    print('email: $email');
    print('password: $password');
    print('rePassword: $rePassword');
    if (state.userName.isEmpty || userName.isEmpty) {
      toastInfo('Your username is empty');
      return;
    }
    if (state.email.isEmpty || email.isEmpty) {
      toastInfo('Your email is empty');
      return;
    }
    if (userName.length < 6) {
      toastInfo('Your username must be at least 6 characters');
      return;
    }
    if (state.password != state.rePassword) {
      toastInfo('Password did not match');
      return;
    }
    var context = Navigator.of(ref.context);
    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      if (kDebugMode) {
        print(credential);
      }
      if (credential.user != null) {
        await credential.user?.sendEmailVerification();
        await credential.user?.updateDisplayName(userName);
        toastInfo('Please check your email to verify your account');
        context.pop();
      }
    } catch (e) {}
  }
}
