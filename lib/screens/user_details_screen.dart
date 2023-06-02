import 'package:demos_app/repositories/poll_repository.dart';
import 'package:demos_app/routes/router.dart';
import 'package:demos_app/utils/extensions.dart';
import 'package:demos_app/widgets/cached_network_avatar.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:linkify/linkify.dart';
import 'package:url_launcher/url_launcher.dart';

import '../models/user.dart';
import '../repositories/user_repository.dart';

class UserDetailsScreen extends StatefulWidget {
  const UserDetailsScreen({Key? key, required this.userId}) : super(key: key);

  final String userId;

  @override
  State<UserDetailsScreen> createState() => _UserDetailsScreenState();
}

class _UserDetailsScreenState extends State<UserDetailsScreen> {

  User? _user;

  @override
  void initState() {
    Future.delayed(Duration.zero, () {
      _getUser();
    });
    super.initState();
  }

  void _getUser() async {
    _user = await UserRepository.getUserDetails(userId: widget.userId);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      extendBodyBehindAppBar: true,
      body: _user != null
          ? _userLayout
          : const Center(child: CircularProgressIndicator()),
    );
  }

  Widget get _userLayout {
    return Padding(
      padding: const EdgeInsets.only(top: 56.0),
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
            children: [
          _header,
          _userDescription,
          _followButton,

        ]),
      ),
    );
  }

  Widget get _header {
    return Row(
      children: [
        CachedNetworkAvatar(imageUrl: _user!.photoUrl, radius: 32,),
        Expanded(child: _userStats)
      ],
    );
  }

  Widget get _userDescription {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            _user!.username,
            style: context.bodyMedium.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8.0),
          _formattedDescription,
          const SizedBox(height: 16.0),
        ],
      ),
    );
  }

  Widget get _followButton {
    return Row(
      children: [
        Expanded(
          child: FilledButton(

            style: ButtonStyle(
              padding: MaterialStateProperty.all(const EdgeInsets.all(4.0)),
              backgroundColor: MaterialStateProperty.all(
                _user!.following ? context.buttonColorOff : context.buttonColor,
              ),
            ),
            onPressed: () async {
              if (_user!.following) {
                await UserRepository.unfollowUser(userId: _user!.id);
                _user = _user?.copyWith(
                  following: false,
                  followersCount: _user!.followersCount - 1,
                );
              } else if (!_user!.following) {
                await UserRepository.followUser(userId: _user!.id);
                _user = _user?.copyWith(
                  following: true,
                  followersCount: _user!.followersCount + 1,
                );
              }
              setState(() {});
            },
            child: Text(_user!.following ? 'Unfollow' : 'Follow', style: context.titleSmall.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),),
          ),
        ),
        const SizedBox(width: 8),
        FilledButton(
          style: ButtonStyle(
            padding: MaterialStateProperty.all(const EdgeInsets.all(4.0)),
            backgroundColor: MaterialStateProperty.all(
              _user!.subscribed ? context.buttonColorOff : context.buttonColor,
            ),
          ),
          onPressed: () async {
            if (_user!.subscribed) {
              await UserRepository.unsubscribeToUserNotifications(
                  userId: _user!.id);
              _user = _user?.copyWith(
                subscribed: false,
              );
            } else {
              await UserRepository.subscribeToUserNotifications(
                  userId: _user!.id);
              _user = _user?.copyWith(
                subscribed: true,
              );
            }
            setState(() {});
          },
          child: Icon(_user!.subscribed
              ? Icons.notifications_off_outlined
              : Icons.notification_add_outlined, color: Colors.white,),

        )
      ],
    );
  }

  Widget get _userStats {
    return SizedBox(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _poolsCount,
          _followingCount,
          _followersCount,
        ],
      ),
    );
  }

  Widget get _poolsCount {
    return InkWell(
      onTap: () {
        Routes.router.navigateTo(context,
            'genericpoll',
          routeSettings: RouteSettings(
            arguments: (int pageKey)=> PollRepository.fetchUserPolls(creatorId: _user!.id, page: pageKey),
          ),
        );
      },
      child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
              text: '${_user!.poolsCount}',
              style: context.bodySmall.copyWith(
                fontWeight: FontWeight.w900,
                color: Colors.white,
              ),
              children: [
                TextSpan(
                  text: '\nPools',
                    style: context.displaySmall.copyWith(
                      fontSize: 12.0,
                    )
                )
              ])),
    );
  }

  Widget get _followersCount {
    return RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
            text: '${_user!.followersCount}',
            style: context.bodySmall.copyWith(
              fontWeight: FontWeight.w900,
              color: Colors.white,
            ),
            children: [
              TextSpan(
                text: '\nFollowers',
                  style: context.displaySmall.copyWith(
                    fontSize: 12.0,
                  )
              )
            ]));
  }

  Widget get _followingCount {
    return RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
            text: '${_user!.followingCount}',
            style: context.bodySmall.copyWith(
              fontWeight: FontWeight.w900,
              color: Colors.white,
            ),
            children: [
              TextSpan(
                text: '\nFollowing',
                style: context.displaySmall.copyWith(
                  fontSize: 12.0,
                )
              )
            ]));
  }

  Widget get _formattedDescription{
    if(_user!.description != null){
      final linkified = linkify(_user!.description!, linkifiers: [const UrlLinkifier()], options: const LinkifyOptions(humanize: false, excludeLastPeriod: true));
      return RichText(
      text: TextSpan(
        children: linkified.map((element) {
          if (element is LinkableElement) {
            return TextSpan(
              text: element.text,
              style: context.alternateFont300.copyWith(
                color: Theme.of(context).colorScheme.secondaryContainer,
                decoration: TextDecoration.underline,
                fontSize: 12.0,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () async {
                  launchUrl(Uri.parse(element.url));
                },
            );
          } else {
            return TextSpan(
              text: element.text,
              style: context.alternateFont300.copyWith(
                color: Colors.grey,
                fontSize: 12.0,
              ),
            );
          }
        }).toList(),
    )
  );
  }
    return const SizedBox.shrink();
  }

}
