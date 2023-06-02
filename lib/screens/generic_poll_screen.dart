import 'package:demos_app/widgets/poll_listview.dart';
import 'package:flutter/material.dart';

import '../models/poll.dart';


class GenericPollScreen extends StatelessWidget{

  const GenericPollScreen({Key? key, required this.future}) : super(key: key);

  final Future<List<Poll>> Function(int) future;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: PollListView(future: future)
    );
  }

}
