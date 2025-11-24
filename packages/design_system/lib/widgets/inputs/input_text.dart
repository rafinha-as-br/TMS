import 'package:design_system/tokens/token_inputs_sizes.dart';
import 'package:design_system/widgets/inputs/input_types.dart';
import 'package:flutter/material.dart';
/// Text input field, it contains variants for various use cases
class TextInput extends StatelessWidget {

  // title -> For Travel and Stop titles
  const TextInput.title({
    super.key, required this.controller, this.hintText, required this.size
  }):inputType= InputType.title;

  // description -> For travel, stop, hosting and vehicle notes
  const TextInput.description({
    super.key, required this.controller, this.hintText, required this.size
  }) : inputType = InputType.description;

  final InputType inputType;
  final TextEditingController controller;
  final String? hintText;
  final InputSize size;

  @override
  Widget build(BuildContext context) {

    // getting the data from the input size tokens
    final textStyle = switch(size) {
      InputSize.large => TokenInputSize.largeTextStyle(context),
      InputSize.medium => TokenInputSize.mediumTextStyle(context),
      InputSize.small => TokenInputSize.smallTextStyle(context),
    };

    final keyboardType = switch(inputType){
      InputType.credential => TextInputType.emailAddress,
      InputType.title => TextInputType.text,
      InputType.description => TextInputType.multiline,
      InputType.password => TextInputType.visiblePassword
    };

    return TextField(
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        hintText: hintText
      ),
      style: textStyle,
    );
  }
}
