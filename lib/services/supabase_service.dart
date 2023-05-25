import 'package:demos_app/utils/constants.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseService {

  static Future<void> initialize({required String url, required String anonKey}) async{
    await Supabase.initialize(
      url: supabaseUrl,
      anonKey: supabaseApiKey,
    );
  }

  static SupabaseClient? get client => Supabase.instance.client;
}
