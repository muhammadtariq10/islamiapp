import 'package:flutter/material.dart';
import 'package:islamiapp/theme.dart';

class LodingIndecator extends StatelessWidget {
  const LodingIndecator({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: CircularProgressIndicator(
      color: AppTheme.primary,
    ));
  }
}
