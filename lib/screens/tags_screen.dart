import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../models/poll.dart';
import '../services/supabase_service.dart';
import '../widgets/poll_item.dart';

class TagScreen extends StatefulWidget {
  final String tag;

  const TagScreen({Key? key, required this.tag}) : super(key: key);

  @override
  _TagScreenState createState() => _TagScreenState();
}

class _TagScreenState extends State<TagScreen> {
  static const _pageSize = 20;
  final PagingController<int, Poll> _pagingController = PagingController(firstPageKey: 0);

  @override
  void initState() {
    super.initState();
    _pagingController.addPageRequestListener((pageKey) {
      _fetchData(pageKey);
    });
  }

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }

  Future<void> _fetchData(int pageKey) async {
   /* try {
      final fetchedPools = await SupabaseService().fetchPoolsByTag(widget.tag, limit: _pageSize, page: pageKey);
      final isLastPage = fetchedPools.length < _pageSize;
      if (isLastPage) {
        _pagingController.appendLastPage(fetchedPools);
      } else {
        final nextPageKey = pageKey + fetchedPools.length;
        _pagingController.appendPage(fetchedPools, nextPageKey as int?);
      }
    } catch (error) {
      _pagingController.error = error;
    }*/
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.tag),
        backgroundColor: Colors.blue.withOpacity(0.8),
      ),
      body: PagedListView<int, Poll>.separated(
        physics: const BouncingScrollPhysics(),
        pagingController: _pagingController,
        builderDelegate: PagedChildBuilderDelegate<Poll>(
          itemBuilder: (context, item, index) => PollItem(pool: item),
        ),
        separatorBuilder: (BuildContext context, int index) {
          return const Divider(
            height: 1,
            thickness: 1,
            indent: 16,
            endIndent: 16,
          );
        },
      ),
    );
  }
}
