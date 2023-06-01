import 'package:demos_app/models/user.dart';
import 'package:flutter/cupertino.dart';

import '../services/supabase_service.dart';

class UserRepository{

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