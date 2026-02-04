import 'package:biometric_app/services/local_auth_service.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final ValueNotifier<bool> isLocalAuthFailed = ValueNotifier(false);

  @override
  void initState() {
    checkLocalAuth();
    super.initState();
  }

  void checkLocalAuth() async {
    final auth = context.read<LocalAuthService>();
    final isLocalAvailable = await auth.isBiometricAvailable();

    isLocalAuthFailed.value = false;

    if (isLocalAvailable) {
      final authenticate = await auth.authenticate();

      if (!authenticate) {
        isLocalAuthFailed.value = true;
      } else {
        if (!mounted) return;

        context.go('/home');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ValueListenableBuilder<bool>(
        valueListenable: isLocalAuthFailed,
        builder: (context, failed, _) {
          if (failed) {
            return Column(
              mainAxisAlignment: .center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: checkLocalAuth,
                      child: Text('Tentar novamente'),
                    ),
                  ),
                ),
              ],
            );
          }

          return Center(
            child: SizedBox(
              width: 80,
              height: 80,
              child: CircularProgressIndicator(color: Colors.white),
            ),
          );
        },
      ),
    );
  }
}
