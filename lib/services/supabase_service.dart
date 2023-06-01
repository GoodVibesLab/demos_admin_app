import 'package:demos_app/models/poll.dart';
import 'package:demos_app/models/report.dart';
import 'package:demos_app/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:demos_app/models/user.dart' as demos_user;

class SupabaseService {
  static Future<void> initialize(
      {required String url, required String anonKey}) async {
    await Supabase.initialize(
      url: supabaseUrl,
      anonKey: supabaseApiKey,
    );
  }

  static SupabaseClient? get client => Supabase.instance.client;

  static const pollsTable = 'polls';
  static const notificationsSubscriptionsTable = 'notifications_subscriptions';

  static const createPollRpc = 'create_poll';
  static const searchResultsRpc = 'search_results';
  static const getUserWithCountsRpc = 'get_user_with_counts';

  static Future<String> createPoll(
      {required String question,
      required bool isPrivate,
      required List<String> choices,
      DateTime? endTime,
      List<String>? tags,
      String? lang}) async {
    final response = await client?.rpc(createPollRpc, params: {
      '_question': question,
      '_is_private': isPrivate,
      '_choices': choices,
      '_end_time': endTime?.toIso8601String(),
      '_creator_id': '03780f9a-0650-430d-a46d-ea1463ed368a',
      '_tags': tags,
      '_lang': lang,
    });

    debugPrint('response: $response');

    return response;
  }

  Future<List<Poll>> fetchPolls({int page = 0}) async {
    try {
      final response = await client?.from(pollsTable).select('''
        *,
        creator: creator_id ( id, username, photo_url )
      ''').range(page * maxPollOptions, (page * maxPollOptions) + maxPollOptions - 1);

      debugPrint('response: $response');

      if (response != null) {
        final polls =
            (response as List).map((json) => Poll.fromJson(json)).toList();
        return polls;
      }
    } catch (e) {
      debugPrint('error in fetchPolls $e');
    }

    return [];
  }

  static Future<dynamic> fetchUserPolls({int page = 0, required String creatorId}) async {

      final response = await client?.from(pollsTable).select('''
        *,
        creator: creator_id ( id, username, photo_url )
      ''').eq('creator_id', creatorId).range(page * maxPollOptions, (page * maxPollOptions) + maxPollOptions - 1);

      debugPrint('response: $response');

      return response;
  }

  static Future<dynamic> fetchPollsByTag({int page = 0, required String tag}) async {
    final response = await client?.from(pollsTable).select('''
    *,
    creator: creator_id ( id, username, photo_url )
  ''').contains('tags', [tag]).range(page * maxPollOptions, (page * maxPollOptions) + maxPollOptions - 1);

    debugPrint('response: $response');

    return response;
  }

  static Future<dynamic> getUniquePoll({required String pollId}) async {
    return await client?.from(pollsTable).select('''
        *,
        creator: creator_id ( id, username, photo_url )
      ''').eq('id', pollId).single();
  }

  Future<void> addVote({required String pollId, required String choice}) async {
    try {
      final response = await client?.from('votes').insert({
        'poll_id': pollId,
        'choice': choice,
        'user_id': '03780f9a-0650-430d-a46d-ea1463ed368a',
      });

      debugPrint('response: $response');
    } catch (e) {
      debugPrint('error in addVote $e');
    }
  }

  ///Report methods

  //create a report object in supabase database
  static Future<bool> createReport({
    required Report report,
  }) async {
    try {
      final response = await client?.from('reports').insert(report.toJson());

      debugPrint('response: $response');

      return true;
    } catch (e) {
      debugPrint('error in createReport $e');
    }
    return false;
  }

  static Future<dynamic> globalSearch(String search) async {
    return await client?.rpc(searchResultsRpc, params: {
      'search_query': search,
    });
  }

  ///Users methods

  static Future<void> signInUser({required AuthResponse authResponse}) async{
    final supaUser = authResponse.user;

    if(supaUser != null) {
      final demosUser = demos_user.User(
        id: supaUser.id,
        username: supaUser.userMetadata?['name'] ?? '',
        email: supaUser.email ?? '',
        photoUrl: supaUser.userMetadata?['picture'] ?? '',
      );
      return await client?.from('users').upsert(demosUser.toJson());
    }
  }

  static Future<dynamic> getUser({required String userId}) async {
    debugPrint('userId: $userId');
    return await client?.from('users').select().eq('id', userId).single();
  }

  static Future<dynamic> getUserDetails({required String userId}) async {
    return await client?.rpc(getUserWithCountsRpc, params: {
      'demanding_user_id': '03780f9a-0650-430d-a46d-ea1463ed368a',
      'user_id': userId,
    });
  }

  static Future<dynamic> followUser({required String userId}) async {
    return await client?.from('followers').insert({
      'following_id': userId,
      'follower_id': '03780f9a-0650-430d-a46d-ea1463ed368a',
    });
  }

  static Future<dynamic> unfollowUser({required String userId}) async {
    return await client
        ?.from('followers')
        .delete()
        .eq('following_id', userId)
        .eq('follower_id', '03780f9a-0650-430d-a46d-ea1463ed368a');
  }

  static Future<dynamic> subscribeToUserNotifications({required String userId}) async {
    return await client?.from(notificationsSubscriptionsTable).insert({
      'subscriber_id': '03780f9a-0650-430d-a46d-ea1463ed368a',
      'subscribing_id': userId,
    });
  }

  static Future<dynamic> unsubscribeToUserNotifications({required String userId}) async {
    return await client
        ?.from(notificationsSubscriptionsTable)
        .delete()
        .eq('subscriber_id', '03780f9a-0650-430d-a46d-ea1463ed368a')
        .eq('subscribing_id', userId);
  }
}
