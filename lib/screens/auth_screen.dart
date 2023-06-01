import 'package:demos_app/routes/router.dart';
import 'package:demos_app/utils/constants.dart';
import 'package:demos_app/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sign_in_button/sign_in_button.dart';

import '../generated/l10n.dart';
import '../providers/user_provider.dart';

class AuthScreen extends ConsumerStatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends ConsumerState<AuthScreen> {
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () => Routes.router.pop(context),
          child: const RotatedBox(
            quarterTurns: 1,
            child: Icon(Icons.arrow_forward_ios_rounded),
          ),
        ),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(

                children: [
                  Text(S.current.authTitle, style: context.titleLarge.copyWith(
                    fontWeight: FontWeight.bold
                  ),),
                  const SizedBox(
                    height: 32.0,
                  ),
                  Text(S.current.authSubtitle, style: context.bodySmall,),
                  Expanded(child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SignInButton(Buttons.googleDark, onPressed: ()async{
                        setState(() {
                          _isLoading = true;
                        });
                        var authResponse = await _signInWithGoogle();
                        setState(() {
                          _isLoading = false;
                        });
                        _showAuthResultSnackBar(authResponse);
                        if(authResponse){
                          Routes.router.pop(context);
                        }else{

                        }
                      }),
                    ],
                  ))
                ],
              ),
            ),
          ),
          if (_isLoading)
            Container(
              color: Colors.black.withOpacity(0.3),
              child: const Center(child: CircularProgressIndicator()),
            ),
        ],
      ),
    );
  }

  Future<bool> _signInWithGoogle() async {
    await ref.read(authStateProvider.notifier).signInWithGoogle();
    return ref.read(authStateProvider) != null;
  }

  void _showAuthResultSnackBar(bool success) {
    snackbarKey.currentState?.showSnackBar(
      SnackBar(
        content: Text(success ? 'success' : 'fail'),
      ),
    );
  }
}
