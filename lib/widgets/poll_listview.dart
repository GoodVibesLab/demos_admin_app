import 'package:demos_app/widgets/poll_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../models/poll.dart';
import '../providers/ad_provider.dart';

class PollListView extends ConsumerStatefulWidget {
  const PollListView({Key? key, required this.future}) : super(key: key);

  final Future<List<Poll>> Function(int) future;

  @override
  ConsumerState<PollListView> createState() => _PollListViewState();
}

class _PollListViewState extends ConsumerState<PollListView> {

  static const _pageSize = 20;
  final PagingController<int, Poll> _pagingController =
  PagingController(firstPageKey: 0);

  late final NativeAd _nativeAd;

  @override
  void initState() {
    super.initState();
    _pagingController.addPageRequestListener((pageKey) {
      _fetchData(pageKey);
    });
    Future.delayed(Duration.zero,(){
      _loadAds();
    });
  }

  Future<void> _loadAds() async {
    _nativeAd = ref.watch(nativeAdProvider).getNativeAdWidget(Theme.of(context).colorScheme.background);
  }

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }

  Future<void> _fetchData(int pageKey) async {
    try {
      final fetchedPools = await widget.future(pageKey);
      final isLastPage = (fetchedPools.length) < _pageSize;
      if (isLastPage) {
        _pagingController.appendLastPage(fetchedPools);
      } else{
        final nextPageKey = pageKey + fetchedPools.length;
        _pagingController.appendPage(fetchedPools, nextPageKey);
      }
    } catch (error) {
      _pagingController.error = error;
    }
  }

  @override
  Widget build(BuildContext context) {
    return PagedListView<int, Poll>.separated(
      physics: const BouncingScrollPhysics(),
      pagingController: _pagingController,
      builderDelegate: PagedChildBuilderDelegate<Poll>(
        itemBuilder: (context, item, index) => PollItem(poll: item),
      ),
      separatorBuilder: (BuildContext context, int index) {
        debugPrint('index: $index show ad ${index % 5 == 0}');
        return
          index % 5 == 0 ? _nativeAdWidget : const Divider(
            height: 1,
            thickness: 1,
            indent: 16,
            endIndent: 16,
          );
      },
    );
  }

  Widget get _nativeAdWidget {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        minWidth: 320, // minimum recommended width
        minHeight: 320, // minimum recommended height
        maxWidth: 400,
        maxHeight: 400,
      ),
      child: AdWidget(ad: _nativeAd),
    );
  }
}
