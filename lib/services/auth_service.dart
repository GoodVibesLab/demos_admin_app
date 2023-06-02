
import 'package:demos_app/services/supabase_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthService {

  static const String twitterConsumerKey = 'YOUR_TWITTER_CONSUMER_KEY';
  static const String twitterConsumerSecret = 'YOUR_TWITTER_CONSUMER_SECRET';

  static String? _userId;
  static String? get userId => _userId;

  static void updateUserId(String? id) {
    _userId = id;
  }

  // Sign in with Google
  static Future<AuthResponse?> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      // Obtain the auth details from the request
      final GoogleSignInAuthentication? googleAuth =
      await googleUser?.authentication;

      debugPrint('googleAuth: ${googleAuth?.accessToken}');

      if(googleAuth == null) return null;

      debugPrint('googleAuth.idToken: ${googleAuth.idToken}');

      final credentials =
      await SupabaseService.client?.auth.signInWithIdToken(provider: Provider.google, idToken: googleAuth.idToken ?? '');
      // Once signed in, return the UserCredential
      return credentials;
    } catch (e) {
      debugPrint('Error signing in with Google: $e');
      return null;
    }
  }

/*
// Sign in with Facebook
  Future<AuthResponse> signInWithFacebook() async {
    final LoginResult result = await FacebookAuth.instance.login();

    if (result.status == LoginStatus.success) {
      final AccessToken accessToken = result.accessToken!;
      final credentials = await supabaseClient.auth.signInWithIdToken(provider: Provider.facebook, idToken: accessToken.token);

      debugPrint('metas');
      debugPrint(credentials.user?.userMetadata.toString() ?? 'null');
      if (credentials.user != null) {
        await _insertUser(credentials.user!);
      }

      return credentials;
    } else {
      throw Exception('Failed to login with Facebook');
    }
  }

  Future<AuthResponse> signInWithApple() async {
    final AuthorizationCredentialAppleID appleCredential = await SignInWithApple.getAppleIDCredential(
      scopes: [
        AppleIDAuthorizationScopes.email,
        AppleIDAuthorizationScopes.fullName,
      ],
    );


    final credentials = await supabaseClient.auth.signInWithIdToken(provider: Provider.apple, idToken: appleCredential.identityToken!);

    debugPrint('metas');
    debugPrint(credentials.user?.userMetadata.toString() ?? 'null');
    if (credentials.user != null) {
      await _insertUser(credentials.user!);
    }

    return credentials;
  }

  _insertUser(User user) async {
    await Future.delayed(const Duration(seconds: 2));

    EpsilonUser epsilonUser = EpsilonUser(
      id: user.id,
      username: user.userMetadata?['name'] ?? '',
      email: user.email ?? '',
      photoUrl: user.userMetadata?['picture'] ?? '',
    );

    await ApiCalls.upsertUser(epsilonUser);
  }



  static updateUserId(String? id) {
    _userId = id;
  }

  //delete user using supabase function
  Future<void> deleteUser() async {
    try {
      await supabaseClient.from(userTable).delete().eq('id', _userId);
    }catch (e) {
      debugPrint(e.toString());
    }
  }
*/

}
