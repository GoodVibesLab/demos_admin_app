import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static const _pageSize = 20;
  final PagingController<int, String> _pagingController =
  PagingController(firstPageKey: 0);
  final List<String> _data = List.generate(100, (index) => 'Item ${index + 1}');

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
    try {
      final items = _data.sublist(
          pageKey * _pageSize, (pageKey + 1) * _pageSize);
      // Simulating an asynchronous API call delay
      await Future.delayed(Duration(seconds: 2));
      _pagingController.appendPage(items, pageKey + 1);
    } catch (error) {
      _pagingController.error = error;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: PagedListView<int, String>(
        pagingController: _pagingController,
        builderDelegate: PagedChildBuilderDelegate<String>(
          itemBuilder: (context, item, index) => ListTile(
            title: Text(item),
          ),
        ),
      ),
    );
  }
}
