import 'package:design_system/tokens/token_button_sizes.dart';
import 'package:design_system/widgets/buttons/button_types.dart';
import 'package:flutter/material.dart';

/// these are the actions button, used for main actions, is a flexible button 
/// that can receive just a icon or a text
class ActionButton extends StatelessWidget {

  const ActionButton.large({
    super.key, this.text, this.icon, required this.type,
    required this.onPressed
  }) : size = ButtonSize.large;

  const ActionButton.medium({
    super.key, this.text, this.icon, required this.type,
    required this.onPressed
  }) : size = ButtonSize.medium;

  const ActionButton.small({
    super.key, this.text, this.icon, required this.type,
    required this.onPressed
  }) : size = ButtonSize.small;


  final String? text;
  final IconData? icon;
  final ButtonSize size;
  final ButtonType type;
  final VoidCallback onPressed;


  @override
  Widget build(BuildContext context) {

    final padding = switch(size){
      ButtonSize.large => TokensButtonSize.largePadding,
      ButtonSize.medium => TokensButtonSize.mediumPadding,
      ButtonSize.small => TokensButtonSize.smallPadding,
    };

    final height = switch(size){
      ButtonSize.large => TokensButtonSize.largeHeight,
      ButtonSize.medium => TokensButtonSize.mediumHeight,
      ButtonSize.small => TokensButtonSize.smallHeight,
    };

    final textStyle = switch(size){
      ButtonSize.large => TokensButtonSize.largeTextStyle(context),
      ButtonSize.medium => TokensButtonSize.mediumTextStyle(context),
      ButtonSize.small => TokensButtonSize.smallTextStyle(context)
    };




    final content = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if(icon == null) const SizedBox(width: 15,),

        if(icon != null) Icon(icon, size: height,),

        if(icon != null) const SizedBox(width: 8),

        if(text != null) Flexible(
          child: Text(
            text!,
            style: textStyle,
            softWrap: true,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),


      ],
    );

    final button = switch(type){
      ButtonType.filled => ElevatedButton(
        onPressed: onPressed,
        style: Theme.of(context).elevatedButtonTheme.style!.copyWith(
          padding: WidgetStateProperty.all(padding),
          minimumSize: WidgetStateProperty.all(Size(double.infinity, height)),
        ),
        child: content
      ),

      ButtonType.outlined => OutlinedButton(
          onPressed: onPressed,
          style: Theme.of(context).outlinedButtonTheme.style!.copyWith(
            padding: WidgetStateProperty.all(padding),
            minimumSize: WidgetStateProperty.all(Size(double.infinity, height)),
          ),
          child: content
      ),
    };





    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: button,
    );
  }
}

