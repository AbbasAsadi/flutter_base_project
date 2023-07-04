import 'package:flutter_base_project/data/repositories/auth_repository.dart';
import 'package:get/get.dart';

import '../../../app/services/local_storage.dart';
import '../../../domain/entities/user.dart';
import '../../../domain/usecases/signup_use_case.dart';

class AuthController extends GetxController {
  final store = Get.find<LocalStorageService>();
  SignUpUseCase? usecase;
  var isLoggedIn = false.obs;

  User? get user => store.user;

  @override
  void onInit() async {
    super.onInit();
    usecase = SignUpUseCase(AuthenticationRepositoryIml());

    isLoggedIn.value = store.user != null;
  }

  signUpWith(String username) async {
    try {
      final user = await usecase?.execute(username);
      store.user = user;
      isLoggedIn.value = true;
      isLoggedIn.refresh();
    } catch (error) {}
  }

  logout() {
    store.user = null;
    isLoggedIn.value = false;
  }
}
