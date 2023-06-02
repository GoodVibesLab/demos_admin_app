import 'package:demos_app/models/report.dart';
import 'package:demos_app/services/supabase_service.dart';

import '../services/auth_service.dart';

class UserSettingsRepository {
  
  static Future<bool> reportPool({required String poolId, required ReportType reportType}) async {
    final userId = AuthService.userId;
    if(userId == null) return false;
    Report report = Report(
      poolId: poolId,
      description: reportType.name,
      reporterId: AuthService.userId!,
    );
    return SupabaseService.createReport(report: report);
  }

}