import 'package:supabase_flutter/supabase_flutter.dart';
import '../models/user.dart' as local_user;
import 'database_service.dart';

class AuthService {
  static final SupabaseClient _supabase = Supabase.instance.client;
  
  // Verificar se o usuário está logado
  static bool get isLoggedIn => _supabase.auth.currentUser != null;
  
  // Obter usuário atual
  static User? get currentUser => _supabase.auth.currentUser;
  
  // Login
  static Future<AuthResponse> signIn(String email, String password) async {
    try {
      final response = await _supabase.auth.signInWithPassword(
        email: email,
        password: password,
      );
      
      if (response.user != null) {
        // Buscar dados do usuário na tabela users do Supabase
        final userData = await _supabase
            .from('users')
            .select()
            .eq('id', response.user!.id)
            .single();
        
        // Salvar no banco local
        final localUser = local_user.User()
          ..supabaseId = response.user!.id
          ..nome = userData['nome']
          ..email = userData['email']
          ..perfil = userData['perfil'] == 'Administrador' 
              ? local_user.UserPerfil.administrador 
              : local_user.UserPerfil.monitor
          ..ativo = userData['ativo'];
        
        await DatabaseService.saveUser(localUser);
      }
      
      return response;
    } catch (e) {
      rethrow;
    }
  }
  
  // Registro
  static Future<AuthResponse> signUp(String email, String password, String nome, local_user.UserPerfil perfil) async {
    try {
      final response = await _supabase.auth.signUp(
        email: email,
        password: password,
      );
      
      if (response.user != null) {
        // Criar registro na tabela users
        await _supabase.from('users').insert({
          'id': response.user!.id,
          'nome': nome,
          'email': email,
          'perfil': perfil == local_user.UserPerfil.administrador ? 'Administrador' : 'Monitor',
          'ativo': true,
        });
        
        // Salvar no banco local
        final localUser = local_user.User()
          ..supabaseId = response.user!.id
          ..nome = nome
          ..email = email
          ..perfil = perfil
          ..ativo = true;
        
        await DatabaseService.saveUser(localUser);
      }
      
      return response;
    } catch (e) {
      rethrow;
    }
  }
  
  // Logout
  static Future<void> signOut() async {
    await _supabase.auth.signOut();
  }
  
  // Obter perfil do usuário atual
  static Future<local_user.UserPerfil?> getCurrentUserProfile() async {
    final localUser = await DatabaseService.getCurrentUser();
    return localUser?.perfil;
  }
  
  // Verificar se é administrador
  static Future<bool> isAdmin() async {
    final profile = await getCurrentUserProfile();
    return profile == local_user.UserPerfil.administrador;
  }
}
