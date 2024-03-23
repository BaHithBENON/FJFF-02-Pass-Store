import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:pass_store_app/commons/ui/widgets/widgets_functions.dart';

import '../../../commons/ui/widgets/text_field_edit_widget.dart';

class CreatePasswordUI extends StatelessWidget {
  const CreatePasswordUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        //leading: const Icon(TablerIcons.grid_dots),
        backgroundColor: Colors.transparent,
        actions: const [
          Icon(TablerIcons.x),
          SizedBox(width: 10),
        ],
        scrolledUnderElevation: .2,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFieldWidget(
                  controller: TextEditingController(),
                  title: "Name",
                  hint: "Name [ Ex : Discord]",
                  indicationText: "The name representing the entity of your password",
                  errorText: "Wrong data format",
                  keyboardType: TextInputType.text,
                  leftIcon: const Icon(TablerIcons.input_x, size: 15),
                  withEraser: true,
                  withTitleWhenTexting: false,
                  blocColor: Theme.of(context).cardColor,
                  withRadius: true,
                ),
                const SizedBox(height: 10),
                TextFieldWidget(
                  controller: TextEditingController(),
                  // title: "Username - Email - Phone",
                  hint: "Username - Email - Phone",
                  indicationText: "The username or email or phone number of the password account",
                  errorText: "Wrong data format",
                  keyboardType: TextInputType.text,
                  leftIcon: const Icon(TablerIcons.user_edit, size: 15),
                  withEraser: true,
                  withTitleWhenTexting: true,
                  blocColor: Theme.of(context).cardColor,
                  withRadius: true,
                ),
                const SizedBox(height: 10),
                TextFieldWidget(
                  controller: TextEditingController(),
                  // title: "Password",
                  hint: "Password",
                  indicationText: "The password to save",
                  errorText: "Wrong data format",
                  keyboardType: TextInputType.visiblePassword,
                  obscure: true,
                  obscureCharacter: "*",
                  leftIcon: const Icon(TablerIcons.key, size: 15),
                  withEraser: false,
                  withTitleWhenTexting: true,
                  blocColor: Theme.of(context).cardColor,
                  withRadius: true,
                ),
                const SizedBox(height: 10),
                TextFieldWidget(
                  controller: TextEditingController(),
                  // title: "Url",
                  hint: "Url",
                  indicationText: "The link to the site or application concerned",
                  errorText: "Wrong data format",
                  keyboardType: TextInputType.url,
                  leftIcon: const Icon(TablerIcons.link, size: 15),
                  withEraser: true,
                  withTitleWhenTexting: true,
                  blocColor: Theme.of(context).cardColor,
                  withRadius: true,
                ),
                const SizedBox(height: 10),
                TextFieldWidget(
                  controller: TextEditingController(),
                  // title: "Notes",
                  hint: "Notes",
                  indicationText: "Description of the password",
                  errorText: "Wrong data format",
                  minLines: 3,
                  maxLines: 10,
                  keyboardType: TextInputType.text,
                  leftIcon: const Icon(TablerIcons.dots, size: 15),
                  withEraser: true,
                  withTitleWhenTexting: true,
                  withRadius: true,
                  blocColor: Theme.of(context).cardColor,
                ),
                const SizedBox(height: 10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: getBoxDecoration(
                        color: Theme.of(context).cardColor,
                      ),
                      child: const Icon(TablerIcons.photo, size: 15),
                    ),
                    const SizedBox(width: 5),
                    Expanded(
                      child: Container(
                        height: 200,
                        width: double.maxFinite,
                        decoration: getBoxDecoration(
                          color: Colors.deepOrangeAccent,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 100),
              ],
            ),
          ),
        ),
      ),
    );
  }
}