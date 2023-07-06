import 'package:flutter/material.dart';

class CompanyNameNoRichText extends StatelessWidget {
  const CompanyNameNoRichText({
    super.key,
    required this.args,
  });
  final args;

  @override
  Widget build(BuildContext context) {
    return Text(args[3]);
  }
}
