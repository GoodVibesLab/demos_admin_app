import 'package:demos_app/models/report.dart';
import 'package:demos_app/services/supabase_service.dart';

class UserSettingsRepository {
  
  static Future<bool> reportPool({required String poolId, required ReportType reportType}) async {
    Report report = Report(
      poolId: poolId,
      description: reportType.name,
      reporterId: '03780f9a-0650-430d-a46d-ea1463ed368a',
    );
    return SupabaseService.createReport(report: report);
  }

}