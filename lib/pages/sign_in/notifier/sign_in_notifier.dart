import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:online_course_app/pages/sign_in/notifier/sign_in_state.dart';

class SignInNotifier extends StateNotifier<SignInState> {
  SignInNotifier() : super(SignInState(email: '', password: ''));

  void onUserEmail(String email) {
    state = state.copyWith(email: email);
  }

  void onUserPassword(String password) {
    state = state.copyWith(password: password);
  }
}

final signInNotifierProvider =
    StateNotifierProvider<SignInNotifier, SignInState>(
  (ref) => SignInNotifier(),
);
