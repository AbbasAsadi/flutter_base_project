import 'dart:core';

import 'package:get_storage/get_storage.dart';

class PrefManager {
  static PrefManager? _instance;

  PrefManager._();

  static PrefManager getInstance() {
    _instance ??= PrefManager._();
    return _instance!;
  }

  final String _IS_USER_LOGIN = 'isUserLogin';
  final pref = GetStorage();

  void clearUser() {}

  // UserModel? getUser() {
  //   UserModel? myUserData;
  //   if (!prefsInstance!.containsKey(_USER_NAME)) {
  //     return null;
  //   }
  //   myUserData = UserModel(
  //     101,
  //     prefsInstance!.getString(_USER_NAME)!,
  //     prefsInstance!.getString(_USER_IMAGE_URI)!,
  //     '0',
  //     '0',
  //     5.0,
  //     prefsInstance?.getInt(_POST_NUMBER) ?? 0,
  //     prefsInstance?.getString(_CAPTION) ?? '',
  //     prefsInstance?.getString(_LOCATION) ?? 'Iran',
  //     prefsInstance!.getString(_EMAIL)!,
  //     prefsInstance!.getString(_PASSWORD)!,
  //     prefsInstance!.getString(_WEBSITE),
  //   );
  //   return myUserData;
  // }

  void clearLogin() {
    pref.remove(_IS_USER_LOGIN);
  }

  bool isUserLogin() {
    return pref.read(_IS_USER_LOGIN) ?? false;
  }

  void setUserLogin(bool isLogin) {
    pref.write(_IS_USER_LOGIN, isLogin);
  }
}
