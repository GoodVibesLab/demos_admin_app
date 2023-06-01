import 'package:demos_app/models/poll.dart';
import 'package:demos_app/models/report.dart';
import 'package:demos_app/repositories/user_settings_repository.dart';
import 'package:demos_app/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PollItemPopUpMenuButton extends StatelessWidget {
  PollItemPopUpMenuButton({
    Key? key,
    required this.pool,
  }) : super(key: key);

  final Poll pool;

  final GlobalKey<ScaffoldMessengerState> _scaffoldMessengerKey =
  GlobalKey<ScaffoldMessengerState>();

  @override
  Widget build(BuildContext context) {
    return ScaffoldMessenger(
      key: _scaffoldMessengerKey,
      child: PopupMenuButton<String>(
        padding: EdgeInsets.zero,
        child: const Icon(Icons.more_vert_rounded, size: 18, color: Colors.grey),
        onSelected: (value) {
          if (value == 'signal') {
            _showPopupMenu(context);
          } else if (value == 'block') {
            // Perform action for "Block this user"
          }
        },
        itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
          const PopupMenuItem<String>(
            value: 'signal',
            child: Text('Signal this pool'),
          ),
          const PopupMenuItem<String>(
            value: 'block',
            child: Text('Block this user'),
          ),
        ],
      ),
    );
  }

  void _showPopupMenu(BuildContext context) {
    showCupertinoModalPopup<void>(
      context: context,
      barrierColor: Theme.of(context).colorScheme.background.withOpacity(0.9),
      builder: (BuildContext context) {
        return CupertinoActionSheet(
          actions: ReportType.values.map((reportType) => CupertinoActionSheetAction(
            onPressed: () {
              _reportPool(context, reportType);
              Navigator.of(context).pop();
            },
            child: Text(_localisedReportType(reportType)),
          ),).toList(),
          cancelButton: CupertinoActionSheetAction(
            isDefaultAction: true,
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Cancel'),
          ),
        );
      },
    );
  }

  Future<void> _reportPool(BuildContext context, ReportType reportType) async {
    bool reportSent = await UserSettingsRepository.reportPool(
        poolId: pool.id, reportType: reportType);

    //show SnackBar with success or error message

    snackbarKey.currentState?.showSnackBar(SnackBar(
      content: Text(
          reportSent ? 'Pool reported successfully' : 'Error reporting pool'),
      duration: Duration(seconds: 2),
    ));
  }

  String _localisedReportType(ReportType reportType){
    switch (reportType) {
      case ReportType.offensive:
        return 'Offensive Language';
      case ReportType.inappropriate:
        return 'Inappropriate Content';
      case ReportType.spam:
        return 'Spam';
      case ReportType.other:
        return 'Other';
    }
  }
}
