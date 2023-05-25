import 'package:demos_app/routes/router.dart';
import 'package:demos_app/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sign_in_button/sign_in_button.dart';

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
          Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Bienvenue sur E4A, ou tu pourras progresser cool'),
                  const SizedBox(
                    height: 32.0,
                  ),
                  SignInButton(Buttons.google, onPressed: ()async{
                    setState(() {
                      _isLoading = true;
                    });
                    var authResponse = await _signInWithGoogle();
                    setState(() {
                      _isLoading = false;
                    });
                    if(authResponse){
                      Routes.router.pop(context);
                    }
                  }),
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
    final authResponse = await AuthService().signInWithGoogle();
    if (authResponse?.user != null) {

      return true;
    }
    return false;
  }
}
