import 'dart:async';

import 'package:demos_app/repositories/search_repository.dart';
import 'package:demos_app/routes/router.dart';
import 'package:demos_app/utils/extensions.dart';
import 'package:flutter/material.dart';

import '../models/search_result.dart';
import '../repositories/poll_repository.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<SearchResult>? _searchResults = [];

  Timer? _searchTimer;

  @override
  void dispose() {
    _searchTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 16.0),
            _searchField,
            const SizedBox(height: 16.0),
            _searchResultsList,
          ],
        ),
      ),
    );
  }

  Widget get _searchField {
    return Row(
      children: [
        InkWell(
          onTap: () {
            Routes.router.pop(context);
          },
          child: Padding(
            padding: const EdgeInsets.fromLTRB(8, 0, 4, 0),
            child: Icon(
              Icons.close_rounded,
              color: Colors.grey.shade200,
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: TextField(
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w200),
              onChanged: (value) {
                if (value.length > 3) {
                  _getSearchResults(value);
                }
              },
              decoration: InputDecoration(
                hintText: 'Search',
                isDense: true,
                hintStyle:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.w200),
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 0.0),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(100.0),
                  borderSide: const BorderSide(color: Colors.orange, width: 1),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(100.0),
                ),
                suffixIcon: const Icon(Icons.search),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget get _searchResultsList {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          _resultList(_pools),
          const SizedBox(height: 16.0),
          _resultList(_tags),
          const SizedBox(height: 16.0),
          _resultList(_users),
        ],
      ),
    );
  }

  Widget _resultList(List<SearchResult>? results) {
    return (results?.isNotEmpty ?? false)
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Theme.of(context).colorScheme.background,
                child: Row(
                  children: [
                    Text(
                      results!.first.type.name.toUpperCase(),
                      style: context.bodySmall
                          .copyWith(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                  ],
                ),
              ),
              ListView.separated(
                itemCount: results.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return _resultTile(results[index]);
                },
                separatorBuilder: (context, index) {
                  return const Divider();
                },
              ),
            ],
          )
        : const SizedBox.shrink();
  }

  Widget _resultTile(SearchResult result) {
    return InkWell(
      onTap: ()=> _navigateToResult(result),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          result.title,
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ),
    );
  }

  void _navigateToResult(SearchResult result){
    switch(result.type){
      case ResultType.poll:
        Routes.router.navigateTo(context, '/pool/${result.id}');
        break;
      case ResultType.tag:
        Routes.router.navigateTo(context,
          'genericpoll',
          routeSettings: RouteSettings(
            arguments: (int pageKey)=> PollRepository.fetchPollsByTag(tag: result.title, page: pageKey),
          ),
        );
        break;
      case ResultType.user:
        Routes.router.navigateTo(context, '/user/${result.id}');
        break;
    }
  }

  List<SearchResult>? get _pools => _searchResults
      ?.where((element) => element.type == ResultType.poll)
      .toList();
  List<SearchResult>? get _tags => _searchResults
      ?.where((element) => element.type == ResultType.tag)
      .toList();
  List<SearchResult>? get _users => _searchResults
      ?.where((element) => element.type == ResultType.user)
      .toList();

  Future<void> _getSearchResults(String value) async {
    // Cancel any existing timer to avoid unnecessary requests
    _searchTimer?.cancel();

    // Start a new timer to delay the search request
    _searchTimer = Timer(const Duration(seconds: 1), () async {
      _searchResults = await SearchRepository.globalSearch(value);
      setState(() {});
    });
  }
}
