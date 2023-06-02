import 'dart:ui';

import 'package:demos_app/gen/assets.gen.dart';
import 'package:demos_app/providers/refresh_provider.dart';
import 'package:demos_app/providers/user_provider.dart';
import 'package:demos_app/routes/router.dart';
import 'package:demos_app/services/supabase_service.dart';
import 'package:demos_app/widgets/cached_network_avatar.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../widgets/poll_listview.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {

  @override
  void initState() {
    _getDynamicLink();
    super.initState();
  }

  void _getDynamicLink() async {
    final PendingDynamicLinkData? initialLink = await FirebaseDynamicLinks.instance.getInitialLink();

    if (initialLink != null) {
      final Uri deepLink = initialLink.link;
      final pollId = deepLink.queryParameters['pollId'];
      if(pollId != null){
        _navigateToPoll(pollId);
      }
    }

    FirebaseDynamicLinks.instance.onLink.listen(
          (pendingDynamicLinkData) {
        // Set up the `onLink` event listener next as it may be received here
        final Uri deepLink = pendingDynamicLinkData.link;
        // Example of using the dynamic link to push the user to a different screen
        final pollId = deepLink.queryParameters['pollId'];
        if(pollId != null){
          _navigateToPoll(pollId);
        }
      },
    );
  }

  _navigateToPoll(String pollId) {
    Routes.router.navigateTo(context, '/poll/$pollId');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).colorScheme.tertiaryContainer.withOpacity(0.25),
        elevation: 0,
        leading: Row(
          children: [
            const SizedBox(width: 10),
            CachedNetworkAvatar(
                radius: 16,
                imageUrl: ref.watch(authStateProvider)?.photoUrl),
          ],
        ),
        flexibleSpace: ClipRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 7, sigmaY: 7),
            child: Container(
              color: Colors.transparent,
            ),
          ),
        ),
        title: InkWell(
          onTap: () {
            ref.read(refreshProvider.notifier).refresh();
          },
          child: Assets.appIcons.foregroundIcon.image(
            height: 24,
          ),
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
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        child: const Icon(Icons.add)
      ),
      extendBodyBehindAppBar: true,
      body: PollListView(
        future: (pageKey) => SupabaseService().fetchPolls(page: pageKey),
      ),
    );
  }


}
