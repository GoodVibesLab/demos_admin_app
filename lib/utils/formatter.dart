import 'package:demos_app/generated/l10n.dart';

String formatRemainingTime(Duration? remainingTime) {
  if (remainingTime == null || remainingTime.isNegative) {
    return 'Ended';
  }

  if (remainingTime.inDays > 0) {
    return S.current.endsIn('${remainingTime.inDays}d');
  } else if (remainingTime.inHours > 0) {
    return S.current.endsIn('${remainingTime.inHours}h');
  } else if (remainingTime.inMinutes > 0) {
    return S.current.endsIn('${remainingTime.inMinutes}m');
  } else {
    return S.current.endsIn('${remainingTime.inSeconds}s');
  }
}

String formatPercentage(num percentage) {
  if (percentage % 1 == 0) {
    return '${percentage.round()}%';
  } else {
    return '${percentage.toStringAsFixed(1)}%';
  }
}