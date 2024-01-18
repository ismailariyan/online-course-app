import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:online_course_app/pages/sign_up/notifier/register_state.dart';
part 'register_notifier.g.dart';

@riverpod
class RegisterNotifier extends _$RegisterNotifier {
  @override
  RegisterState build() {
    return RegisterState(
      userName: '',
      email: '',
      password: '',
      rePassword: '',
    );
  }

  void onUserNameChanged(String value) {
    state = state.copyWith(userName: value);
  }

  void onUserEmailChanged(String value) {
    state = state.copyWith(email: value);
  }

  void onUserPasswordChanged(String value) {
    state = state.copyWith(password: value);
  }

  void onUserRePasswordChanged(String value) {
    state = state.copyWith(rePassword: value);
  }
}
