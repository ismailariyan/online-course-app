import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:online_course_app/common/global_loader/global_loader.dart';
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
      toastInfo(msg: 'Your username is empty');
      return;
    }
    if (state.email.isEmpty || email.isEmpty) {
      toastInfo(msg: 'Your email is empty');
      return;
    }
    if (userName.length < 6 || state.userName.length < 6) {
      toastInfo(msg: 'Your username must be at least 6 characters');
      return;
    }
    if (state.password.isEmpty ||
        password.isEmpty ||
        rePassword.isEmpty ||
        state.rePassword.isEmpty) {
      toastInfo(msg: 'Your password is empty');
      return;
    }
    if (state.password != state.rePassword) {
      toastInfo(msg: 'Password did not match');
      return;
    }
    // show the loading icon
    ref.read(appLoaderProvider.notifier).setLoaderValue(true);
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
        toastInfo(msg: 'Please check your email to verify your account');
        context.pop();
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        toastInfo(msg: "This password is too weak");
      } else if (e.code == 'email-already-in-use') {
        toastInfo(msg: "This email is already in use");
      } else if (e.code == 'invalid-email') {
        toastInfo(msg: "This email is invalid");
      } else if (e.code == 'user-not-found') {
        toastInfo(msg: "This user is not found");
      }
    } catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }
    }
    ref.read(appLoaderProvider.notifier).setLoaderValue(false);
  }
}
