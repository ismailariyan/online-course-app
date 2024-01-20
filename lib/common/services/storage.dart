import 'package:shared_preferences/shared_preferences.dart';

class StorageService {
  late final SharedPreferences _pref;
  init() async {
    _pref = await SharedPreferences.getInstance();
    return this;
  }
}
