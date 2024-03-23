// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../../../core/utilities/config/text_config.dart';
import '../../../core/utilities/variables/app_texts.dart';

class TextFieldWidget extends StatefulWidget {

  String? title;
  String? hint;
  TextEditingController controller;
  TextInputType? keyboardType;
  int? minLines;
  int? maxLines;
  bool bold;
  Color? borderColor;
  Color? blocColor;
  Function? onChange;
  Function? onSave;
  Function? validator;
  String? obscureCharacter;
  bool? obscure;
  String? errorText;
  String? indicationText;
  bool tagError;
  Widget? leftIcon;
  bool withEraser;
  bool readOnly;
  bool withTitleWhenTexting;
  TextInputAction? textInputAction;
  Color? inputColor;
  bool withRadius;

  TextFieldWidget({
    super.key,
    this.title,
    this.hint,
    required this.controller,
    this.keyboardType,
    this.minLines = 1,
    this.maxLines = 1,
    this.bold = false,
    this.borderColor,
    this.onChange,
    this.onSave,
    this.validator,
    this.obscureCharacter = '•',
    this.obscure = false,
    this.errorText,
    this.indicationText,
    this.tagError = false,
    this.leftIcon,
    this.withEraser = true,
    this.readOnly = false,
    this.withTitleWhenTexting = true,
    this.textInputAction,
    this.blocColor,
    this.inputColor,
    this.withRadius = false,
  });

  @override
  State<TextFieldWidget> createState() => _TeTextFieldWidgetState();
}

class _TeTextFieldWidgetState extends State<TextFieldWidget> {
  bool _isTexting = false;
  bool _hidden = false;
  final FocusNode _focusNode = FocusNode(
    canRequestFocus: false,
    descendantsAreFocusable: false,
  );

  @override
  /// Initialize the state of the [_TeTextFieldWidgetState] class.
  ///
  /// This function is called when the widget is inserted into the tree.
  @override
  void initState() {
    // Call the parent class's initState function.
    super.initState();

    // Set the initial value of the _hidden variable to the value of the widget's obscure property.
    _hidden = widget.obscure!;

    // Add a listener to the FocusNode. When the focus changes, the listener will be called.
    _focusNode.addListener(() {
      // Check if the FocusNode has focus.
      if (_focusNode.hasFocus) {
        // If the FocusNode has focus, set the _isTexting variable to true.
        setState(() {
          _isTexting = true;
        });
      } else {
        // If the FocusNode does not have focus, set the _isTexting variable to false.
        setState(() {
          _isTexting = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.title != null && widget.title!.isNotEmpty) ...[
          const SizedBox(height: 10),
          Text(
            widget.title!,
            style:
                TextConfig.getSimpleTextStyle(true),
          ),
          const SizedBox(height: 10),
        ],
        if (_isTexting &&
            widget.hint != null &&
            widget.hint!.isNotEmpty &&
            widget.withTitleWhenTexting) ...[
          Text(
            widget.hint!,
            style:
                TextConfig.getSimpleTextStyle(true),
          ),
          const SizedBox(height: 10),
        ],
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if(widget.leftIcon != null)
            ...[
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: widget.blocColor ?? Theme.of(context).highlightColor,
                  borderRadius: widget.withRadius ? BorderRadius.circular(4) : null,
                ),
                child: widget.leftIcon,
              ),
              const SizedBox(width: 5),
            ],
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(widget.withRadius ? 4 : 0),
                      color: widget.inputColor ?? Theme.of(context).highlightColor,
                    ),
                    child: TextFormField(
                      controller: widget.controller,
                      keyboardType: widget.keyboardType ?? TextInputType.text,
                      style: TextConfig.getSimpleTextStyle(false),
                      textInputAction: widget.textInputAction,
                      minLines: widget.minLines,
                      maxLines: widget.maxLines,
                      readOnly: widget.readOnly,
                      scrollPadding: const EdgeInsets.all(00.0),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: widget.hint,
                        fillColor: Colors.blue,
                        focusColor: Colors.black12,
                        hintStyle: TextConfig.getSimpleTextStyle(
                          false,
                          color: Colors.grey[500],
                        ),
                      ),
                      focusNode: _focusNode,
                      obscureText: _hidden,
                      onTap: () {},
                      onChanged: (value) {
                        if (widget.onChange != null) widget.onChange!(value);
                      },
                      validator: (value) {
                        if (widget.validator != null) {
                          return widget.validator!(value);
                        } else {
                          return null;
                        }
                      },
                      onEditingComplete: () {
                        _focusNode.unfocus();
                        if (widget.onSave != null) widget.onSave!();
                      },
                    ),
                  ),
                  if (widget.indicationText != null) ...[
                    const SizedBox(height: 10),
                    Text(
                      widget.indicationText!,
                      style: TextConfig.getSimpleTextStyle(true, size: 10),
                    ),
                  ],
                  if (widget.tagError && widget.errorText != null) ...[
                    const SizedBox(height: 10),
                    Text(
                      widget.errorText!,
                      style: TextConfig.getSimpleTextStyle(true, size: 10, color: Colors.red),
                    ),
                  ]
                ],
              ),
            ),
            if((widget.withEraser && _focusNode.hasFocus))
              if(!widget.obscure!)
                InkWell(
                  onTap: () {
                    widget.controller.clear();
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: widget.withRadius ? BorderRadius.circular(4) : null,
                    ),
                    child: const Icon(Icons.close, color: Colors.white),
                  ),
                )
              else
                InkWell(
                  onTap: () {
                    setState(() {
                      _hidden = !_hidden;
                    });
                  },
                  child: Text(
                    _hidden ? AppStrings.show : AppStrings.hide,
                    style: TextConfig.getSimpleTextStyle(true, size: 10),
                  ),
                ),
          ],
        ),
      ],
    );
  }
}
