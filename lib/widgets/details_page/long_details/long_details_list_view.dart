import 'package:flutter/material.dart';

import '../../../constants/padding.dart';

//RichText
import 'rich_text/address_rich_text.dart';
import 'rich_text/catch_phrase_rich_text.dart';
import 'rich_text/email_rich_text.dart';
import 'rich_text/phone_rich_text.dart';

import 'rich_text/company_name_no_rich_text.dart';

//Text
import 'text/company_text.dart';
import 'text/contract_text.dart';

class LongDetailsListView extends StatelessWidget {
  const LongDetailsListView({
    super.key,
    required this.args,
  });
  final args;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView(
        shrinkWrap: true,
        padding: ProjeDecorations.detailsLongDetailsPadding,
        children: [
          CompanyText(),
          CompanyNameNoRichText(args: args),
          CatchPhraseRichText(args: args),
          SizedBox(height: 5.0),
          ContractText(),
          PhoneRichText(args: args),
          EmailRichText(args: args),
          AddressRichText(args: args),
        ]
            .map(
              (e) => Padding(
                padding: ProjeDecorations.detailsListItemPadding,
                child: e,
              ),
            )
            .toList(),
      ),
    );
  }
}
