import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:pass_store_app/core/utilities/variables/consts.dart';

import '../../../core/utilities/config/text_config.dart';
import '../../../core/utilities/variables/fonts_names.dart';
import 'widgets/password_item_widget.dart';

class PasswordsListUI extends StatelessWidget {
  const PasswordsListUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(TablerIcons.grid_dots),
        backgroundColor: Colors.transparent,
        actions: const [
          Icon(TablerIcons.plus),
          SizedBox(width: 10),
        ],
        scrolledUnderElevation: .2,
        centerTitle: true,
        title: Text("Pass Store", style: TextConfig.getSimpleTextStyle(true, font: FontsNames.fontKablammo, color: Colors.deepOrangeAccent)),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ...List.generate(alphabetLetters.length, (index) => Column(
                  children: [
                    for(var item in passwordsList) 
                      if (item.name.split('')[0].toUpperCase() == alphabetLetters[index].toUpperCase())...[
                        const SizedBox(height: 10),
                        PasswordItemWidget(
                          modelPassword: item,
                        ),
                      ]
                  ],
                )),
                const SizedBox(height: 100),
              ],
            ),
          ),
        ),
      ),
    );
  }
}