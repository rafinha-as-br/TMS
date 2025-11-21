import 'package:flutter/material.dart';

import 'button_sizes.dart';
import 'button_types.dart';

/// these are the cancels button, used for canceling actions, is a flexible button
/// that can receive just a icon or a text
class CancelButton extends StatelessWidget {
  const CancelButton({
    super.key, this.text, this.icon,
    required this.size, required this.type,
    required this.onPressed
  });

  final String? text;
  final IconData? icon;
  final ButtonSize size;
  final ButtonType type;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final content = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if(icon == null) const SizedBox(width: 15,),

        if(icon != null) Icon(icon),

        if(icon != null) const SizedBox(width: 8),

        if(text != null) Flexible(
          child: Text(
            text!,
            style: textStyleFor(size, context),
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
              padding: paddingFor(size),
              minimumSize: Size(double.infinity, heightFor(size),),
            backgroundColor: Theme.of(context).colorScheme.error
          ),
          child: content
      ),

      ButtonType.outlined => OutlinedButton(
          onPressed: onPressed,
          style: OutlinedButton.styleFrom(
              padding: paddingFor(size),
              minimumSize: Size(double.infinity, heightFor(size)),
            foregroundColor: Theme.of(context).colorScheme.error
          ),
          child: content
      ),
    };





    return button;
  }
}
