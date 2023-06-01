import 'package:demos_app/services/supabase_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_mlkit_language_id/google_mlkit_language_id.dart';

import '../models/poll.dart';

class PollRepository {
  static Future<String?> createPoll(
      {required String question,
      required bool isPrivate,
      required List<String> choices,
      DateTime? endTime,
      List<String>? tags}) async {
    try {
      LanguageIdentifier languageIdentifier =
          LanguageIdentifier(confidenceThreshold: 0.7);

      final result = await languageIdentifier.identifyLanguage(question);

      String poolId = await SupabaseService.createPoll(
          question: question,
          isPrivate: isPrivate,
          choices: choices,
          endTime: endTime,
          tags: tags,
          lang: result);

      debugPrint('Pool created: $poolId');

      return poolId;
    } catch (e) {
      debugPrint('error in createPool $e');
      return null;
    }
  }

  static Future<Poll?> getUniquePoll({required String poolId}) async {
    try {
      final response = await SupabaseService.getUniquePoll(pollId: poolId);
      debugPrint(response.toString());
      return Poll.fromJson(response);
    } catch (e) {
      debugPrint('error in getUniquePool $e');
    }
    return null;
  }

  static Future<List<Poll>> fetchUserPolls(
      {required String creatorId, required int page}) async {
    try {
      final response = await SupabaseService.fetchUserPolls(
          creatorId: creatorId, page: page);
      debugPrint(response.toString());
      return (response as List).map((json) => Poll.fromJson(json)).toList();
    } catch (e) {
      debugPrint('error in fetchUserPolls $e');
    }
    return [];
  }

  static Future<List<Poll>> fetchPollsByTag(
      {required String tag, required int page}) async {
    try {
      final response = await SupabaseService.fetchPollsByTag(tag: tag, page: page);
      debugPrint(response.toString());
      return (response as List).map((json) => Poll.fromJson(json)).toList();
    } catch (e) {
      debugPrint('error in fetchUserPolls $e');
    }
    return [];
  }
}
