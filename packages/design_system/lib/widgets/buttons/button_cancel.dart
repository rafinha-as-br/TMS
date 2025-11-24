import 'package:flutter/material.dart';

import '../../tokens/token_button_sizes.dart';
import 'button_types.dart';

/// these are the cancels button, used for canceling actions, is a flexible button
/// that can receive just a icon or a text
class CancelButton extends StatelessWidget {
  const CancelButton.large({
    super.key, this.text, this.icon, required this.type,
    required this.onPressed
  }): size = ButtonSize.large;

  const CancelButton.medium({
    super.key, this.text, this.icon, required this.type,
    required this.onPressed
  }):size = ButtonSize.medium;

  const CancelButton.small({
    super.key, this.text, this.icon, required this.type,
    required this.onPressed
  }): size = ButtonSize.small;

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
          style: ElevatedButton.styleFrom(
              padding: padding,
              minimumSize: Size(double.infinity, height,),
            backgroundColor: Theme.of(context).colorScheme.error
          ),
          child: content
      ),

      ButtonType.outlined => OutlinedButton(
          onPressed: onPressed,
          style: OutlinedButton.styleFrom(
            padding: padding,
            minimumSize: Size(double.infinity, height),
            foregroundColor: Theme.of(context).colorScheme.error,
            side: BorderSide(color: Colors.red)
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
