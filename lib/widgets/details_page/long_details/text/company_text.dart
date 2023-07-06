import 'package:flutter/material.dart';

class CompanyText extends StatelessWidget {
  const CompanyText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Company',
      style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 16),
    );
  }
}
