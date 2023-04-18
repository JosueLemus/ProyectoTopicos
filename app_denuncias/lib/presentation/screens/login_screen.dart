import 'package:app_denuncias/presentation/theme/text_styles.dart';
import 'package:app_denuncias/presentation/widgets/primary_button.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/logo.png'),
            PrimaryButton(
                title: 'Inicia sesión',
                icon: Icons.login_rounded,
                onTap: () {
                  print('object');
                }),
            const SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('¿No tienes una cuenta?', style: TextStyles.black16),
                const SizedBox(width: 8),
                InkWell(
                  child: Text('Registrate',
                      style: TextStyles.primary16Bold
                          .merge(const TextStyle(fontWeight: FontWeight.w600))),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
