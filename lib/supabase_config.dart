import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseConfig {
  static const String supabaseUrl = 'https://xujwjzlsnwzdcimecsmo.supabase.co';
  static const String supabaseAnonKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inh1andqemxzbnd6ZGNpbWVjc21vIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTc2OTkxNDIsImV4cCI6MjA3MzI3NTE0Mn0.uu9--zIP_Pc9CBJaX_rTC7wFALldLf6JlPJN4scuyCM';
  
  static Future<void> initialize() async {
    await Supabase.initialize(
      url: supabaseUrl,
      anonKey: supabaseAnonKey,
    );
  }
  
  static SupabaseClient get client => Supabase.instance.client;
}
