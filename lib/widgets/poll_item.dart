import 'dart:math';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:demos_app/models/poll.dart';
import 'package:demos_app/providers/user_provider.dart';
import 'package:demos_app/services/share_service.dart';
import 'package:demos_app/services/supabase_service.dart';
import 'package:demos_app/utils/extensions.dart';
import 'package:demos_app/utils/formatter.dart';
import 'package:demos_app/widgets/user_poll_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:visibility_detector/visibility_detector.dart';

import '../repositories/poll_repository.dart';
import '../routes/router.dart';
import 'poll_item_popup_menu_button.dart';

class PollItem extends ConsumerStatefulWidget {
  final Poll poll;

  const PollItem({
    super.key,
    required this.poll,
  });

  @override
  ConsumerState<PollItem> createState() => _PollItemState();
}

class _PollItemState extends ConsumerState<PollItem> with AutomaticKeepAliveClientMixin {
  String? _userChoice;

  bool _visible = false;

  @override
  void initState() {
    VisibilityDetectorController.instance.forget(Key(widget.poll.id));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      margin: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _headerRow,
          const SizedBox(height: 12),
          _question,
          const SizedBox(height: 2),
          _tags,
          const SizedBox(height: 12),
          _choices,
          const SizedBox(height: 12),
          _stats,
          const SizedBox(height: 8),
        ],
      ),
    );
  }

  Widget get _question {
    return InkWell(
      onTap: () {
        Routes.router.navigateTo(context, '/poll/${widget.poll.id}');
      },
      child: Text(
        widget.poll.question,
        style: context.bodyLarge,
      ),
    );
  }

  //a row displaying user photo and name
  Widget get _headerRow {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        UserPollItem(user: widget.poll.creator),
        Row(
          children: [
            Icon(widget.poll.isPrivate ? Icons.lock : Icons.public,
                size: 14, color: Colors.grey),
            const SizedBox(width: 4),
            Text(
                widget.poll.endTime != null
                    ? formatRemainingTime(
                        widget.poll.endTime!.difference(DateTime.now()))
                    : '∞',
                style: const TextStyle(fontSize: 10, color: Colors.grey)),
            PollItemPopUpMenuButton(
              pool: widget.poll,
            ),
          ],
        ),
      ],
    );
  }

  Widget get _tags {
    return _hasTags
        ? Wrap(
            spacing: 4.0,
            runAlignment: WrapAlignment.start,
            alignment: WrapAlignment.start,
            children: widget.poll.tags!.map((tag) {
              return InkWell(
                onTap: (){
                  Routes.router.navigateTo(context,
                    'genericpoll',
                    routeSettings: RouteSettings(
                      arguments: (int pageKey)=> PollRepository.fetchPollsByTag(tag: tag, page: pageKey),
                    ),
                  );
                },
                child: Text('#$tag',
                    style: context.displaySmall.copyWith(color: Colors.blue, fontSize: 14)),
              );
            }).toList(),
          )
        : const SizedBox.shrink();
  }

  Widget get _choices {
    return VisibilityDetector(
      key: Key(widget.poll.id),
      onVisibilityChanged: (visibilityInfo) {
        if (!_visible && visibilityInfo.visibleFraction == 1.0) {
          setState(() {
            _visible = true;
          });
        }
      },
      child: Column(
        children: widget.poll.choices.map((choice) {

          final index = widget.poll.choices.indexOf(choice);
          int votes = 0;

          List<int> votesCount = widget.poll.votesCounts;
          if (votesCount.asMap().containsKey(index)) {
            votes = votesCount[index];
          }

          final bool hasVoted = _userChoice != null && _userChoice == choice;

          if(hasVoted){
            votes = votes + 1;
          }

          final percentage = (votes / (max(_totalVotes, 1))) * 100;

          final percentageString = formatPercentage(percentage);

          return InkWell(
            onTap: () {

              String ? userId = ref.read(authStateProvider)?.id;
              if(userId == widget.poll.creator.id){
                return;
              }
              if(userId == null){
                Routes.router.navigateTo(context, '/auth');
                return;
              }
              if (!hasVoted) {
                setState(() {
                  _userChoice = choice;
                });
                SupabaseService()
                    .addVote(pollId: widget.poll.id, choice: choice);
              }
            },
            child: LayoutBuilder(
              builder: (context, constraints) {
                var progressBarWidth = votes > 0
                    ? constraints.maxWidth * (votes / _totalVotes)
                    : 0.0;

                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      votes > 0
                          ? AnimatedContainer(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeInOut,
                              height: 22,
                              width: _visible ? progressBarWidth : 0,

                              decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.tertiaryContainer,
                                borderRadius: BorderRadius.circular(100),
                              ),
                              alignment: Alignment.centerRight,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 6),
                              child: AutoSizeText(percentageString,
                                  maxLines: 1,
                                  minFontSize: 10,
                                  maxFontSize: 16,
                                  overflow: TextOverflow.clip,
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.grey.shade200,
                                      fontWeight: FontWeight.bold)),
                            )
                          : _noVotesProgressBar,
                      const SizedBox(width: 8),
                      Flexible(
                        child: AutoSizeText(
                          choice,
                          maxLines: 1,
                          minFontSize: 10,
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(width: 4),
                      _choiceIcon(choice)
                    ],
                  ),
                );
              },
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget _choiceIcon(String choice) {
    if (_userChoice == choice) {
      return const Icon(
        Icons.check,
        color: Colors.green,
        size: 16,
      );
    }else if (_userChoice == null){
      return Icon(Icons.add_circle_outline, color: Colors.grey.shade700, size: 16,);
    }
    else {
      return const SizedBox.shrink();
    }
  }

  Widget get _noVotesProgressBar {
    return Container(
      height: 22,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.tertiaryContainer,
        borderRadius: BorderRadius.circular(100),
      ),
      alignment: Alignment.centerRight,
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: AutoSizeText('0%',
          maxLines: 1,
          minFontSize: 10,
          maxFontSize: 16,
          overflow: TextOverflow.clip,
          style: TextStyle(
              fontSize: 10,
              color: Colors.grey.shade200,
              fontWeight: FontWeight.bold)),
    );
  }

  Widget get _stats {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '$_totalVotes votes',
          style: const TextStyle(fontSize: 12, color: Colors.grey),
        ),
        InkWell(
          onTap: (){
            ShareService.sharePoll(widget.poll);
          },
          child: const Row(
            children: [
              Text(
                'Share',
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
              SizedBox(width: 8),
              Icon(Icons.share, size: 16, color: Colors.grey)
            ],
          ),
        )
      ],
    );
  }

  num get _totalVotes {
    return widget.poll.votesCounts.isNotEmpty
        ? widget.poll.votesCounts.reduce((a, b) => a + b) + (_userChoice != null ? 1 : 0)
        : _userChoice != null ? 1 : 0;
  }

  bool get _hasTags {
    return widget.poll.tags?.isNotEmpty ?? false;
  }

  @override
  bool get wantKeepAlive => true;
}
