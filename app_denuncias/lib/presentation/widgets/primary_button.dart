import 'package:app_denuncias/presentation/theme/text_styles.dart';
import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class PrimaryButton extends StatelessWidget {
  final String title;
  final IconData? icon;
  final Function() onTap;
  const PrimaryButton(
      {super.key, required this.title, this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(12),
      elevation: 10,
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: onTap,
        child: Container(
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: AppTheme.primaryColor),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: TextStyles.white16,
                ),
                if (icon != null)
                  Padding(
                    padding: const EdgeInsets.only(left: 4),
                    child: Icon(
                      icon,
                      color: Colors.white,
                    ),
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
