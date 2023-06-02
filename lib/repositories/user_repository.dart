import 'package:demos_app/models/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:supabase_flutter/supabase_flutter.dart' as supabase;

import '../services/auth_service.dart';
import '../services/supabase_service.dart';

class UserRepository{

  static Future<User?> signInUser(supabase.AuthResponse? authResponse) async{

    try {
      if(authResponse?.user == null){
        return null;
      }

      await Future.delayed(const Duration(seconds: 2));
      await SupabaseService.signInUser(authResponse: authResponse!);

      return await getUser();
    }catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }

  static Future<User?> getUser() async {
    try{
      final supabaseUserId = supabase.Supabase.instance.client.auth.currentUser?.id;
      debugPrint('supabaseUserId: $supabaseUserId');
      if(supabaseUserId == null) return null;

      final response = await SupabaseService.getUser(userId: supabaseUserId);
      debugPrint('getUser response: $response');
      AuthService.updateUserId(supabaseUserId);
      return User.fromJson(response);
    }catch(e){
      debugPrint('error in getUser $e');
    }
    return null;
  }

  static Future<User?> getUserDetails({required String userId}) async {
    try{
      final response = await SupabaseService.getUserDetails(userId: userId);
      return User.fromJson(response);
    }catch(e){
      debugPrint('error in getUser $e');
    }
    return null;
  }

  static Future<void> followUser({required String userId}) async {
    try{
      await SupabaseService.followUser(userId: userId);
    }catch(e){
      debugPrint('error in followUser $e');
    }
  }

  static Future<void> unfollowUser({required String userId}) async {
    try{
      await SupabaseService.unfollowUser(userId: userId);
    }catch(e){
      debugPrint('error in unfollowUser $e');
    }
  }

  static Future<void> subscribeToUserNotifications({required String userId}) async {
    try{
      await SupabaseService.subscribeToUserNotifications(userId: userId);
    }catch(e){
      debugPrint('error in subscribeToUser $e');
    }
  }

  static Future<void> unsubscribeToUserNotifications({required String userId}) async {
    try{
      await SupabaseService.unsubscribeToUserNotifications(userId: userId);
    }catch(e){
      debugPrint('error in unsubscribeToUser $e');
    }
  }

}