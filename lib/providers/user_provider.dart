import 'package:demos_app/repositories/user_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/user.dart';
import '../services/auth_service.dart';

class AuthStateNotifier extends StateNotifier<User?> {

  AuthStateNotifier(): super(null);

  Future<void> getUser() async {
    state = await UserRepository.getUser();
  }

  Future<void> signInWithGoogle() async {
    final authResponse = await AuthService.signInWithGoogle();
    state = await UserRepository.signInUser(authResponse);
  }
}

final authStateProvider = StateNotifierProvider<AuthStateNotifier, User?>((ref) {
  return AuthStateNotifier();
});