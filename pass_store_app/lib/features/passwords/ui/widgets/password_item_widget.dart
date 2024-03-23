import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:pass_store_app/features/passwords/models/model_password.dart';

import '../../../../commons/ui/widgets/widgets_functions.dart';
import '../../../../core/utilities/config/text_config.dart';
import '../../../../core/utilities/variables/fonts_names.dart';


class PasswordItemWidget extends StatelessWidget {
  final ModelPassword modelPassword;
  const PasswordItemWidget({super.key, required this.modelPassword});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 00, vertical: 10),
      decoration: getBoxDecoration(),
      child: Row(
        children: [
          Container(
            height: 40, width: 40,
            padding: const EdgeInsets.all(5),
            clipBehavior: Clip.hardEdge,
            decoration: getBoxDecoration(
              color: Theme.of(context).cardColor,
            ),
            child: Image.asset(modelPassword.image),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(modelPassword.name,
                  style: TextConfig.getGoogleStyle(FontsNames.fontPoppins, bold: true),
                ),
                Text(modelPassword.username,
                  style: TextConfig.getGoogleStyle(FontsNames.fontSpaceMono, size: 10, bold: true),
                ),
                Text(modelPassword.url,
                  style: TextConfig.getGoogleStyle(FontsNames.fontSpaceMono, size: 10, bold: true),
                )
              ],
            ),
          ),
          const SizedBox(width: 10),
          const Icon(TablerIcons.chevron_right, size: 10, weight: 50),
        ],
      ),
    );
  }
}