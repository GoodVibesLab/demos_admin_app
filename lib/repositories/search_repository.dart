import 'package:demos_app/screens/search_screen.dart';
import 'package:demos_app/services/supabase_service.dart';
import 'package:flutter/cupertino.dart';

import '../models/search_result.dart';

class SearchRepository{

  static Future<List<SearchResult>?> globalSearch(String terms) async{
    try{
      final response = await SupabaseService.globalSearch(terms);
      return (response as List).map((searchResult) => SearchResult.fromJson(searchResult)).toList();
    }catch(e){
      debugPrint('error in globalSearch $e');
    }
    return null;
  }

}