import '../../domain/entities/user.dart';
import '../../domain/repositories/auth_repository.dart';

class AuthenticationRepositoryIml extends AuthenticationRepository {
  @override
  Future<User> signUp(String username) async {
    return User(username: username);
  }
}
