import 'package:demos_app/widgets/poll_item.dart';
import 'package:flutter/material.dart';

import '../models/poll.dart';
import '../repositories/poll_repository.dart';

class PollDetailsScreen extends StatefulWidget {
  const PollDetailsScreen({Key? key, required this.poolId}) : super(key: key);

  final String poolId;

  @override
  State<PollDetailsScreen> createState() => _PollDetailsScreenState();
}

class _PollDetailsScreenState extends State<PollDetailsScreen> {

  late Future<Poll?> _future;
  @override
  void initState() {
    _future = PollRepository.getUniquePoll(poolId: widget.poolId);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: FutureBuilder<Poll?>(
        future: _future,
        builder: (context, snapshot) {
          if(snapshot.hasData && snapshot.data != null) {
            return PollItem(poll: snapshot.data!);
          } else if(snapshot.hasError) {
            return Center(
              child: Text(snapshot.error.toString()),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        }
      )
    );
  }
}
