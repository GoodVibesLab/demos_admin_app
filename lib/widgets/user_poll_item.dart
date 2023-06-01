import 'package:demos_app/utils/extensions.dart';
import 'package:flutter/material.dart';

import '../models/user.dart';
import '../routes/router.dart';
import 'cached_network_avatar.dart';

class UserPollItem extends StatelessWidget {
  const UserPollItem({Key? key, required this.user}) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=>Routes.router.navigateTo(context, '/user/${user.id}'),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CachedNetworkAvatar(
              imageUrl: user.photoUrl, radius: 16),
          const SizedBox(width: 8),
          Text(
            user.username,
            style: context.displaySmall.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
