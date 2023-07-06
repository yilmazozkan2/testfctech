import 'package:flutter/material.dart';

class ContractText extends StatelessWidget {
  const ContractText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Contract',
      style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 16),
    );
  }
}
