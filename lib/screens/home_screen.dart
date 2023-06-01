import 'package:demos_app/models/poll.dart';
import 'package:demos_app/providers/ad_provider.dart';
import 'package:demos_app/routes/router.dart';
import 'package:demos_app/services/supabase_service.dart';
import 'package:demos_app/utils/constants.dart';
import 'package:demos_app/widgets/poll_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../widgets/poll_listview.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Demos'),
            const SizedBox(width: 10),
            Icon(Icons.record_voice_over),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              Routes.router.navigateTo(context, 'search');
            },
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {

            },
            icon: const Icon(Icons.place),
          ),],
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton.small(
        onPressed: () {
          Routes.router.navigateTo(context, 'create');
        },
        child: const Icon(Icons.add),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        )
      ),
      extendBodyBehindAppBar: true,
      body: PollListView(
        future: (pageKey) => SupabaseService().fetchPolls(page: pageKey),
      ),
    );
  }


}
