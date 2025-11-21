import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// this file contains the Enums & methods that sets the buttons sizes
enum ButtonSize{large, medium, small}

double heightFor(ButtonSize size){
  switch (size){
    case ButtonSize.large:
      return 46;
    case ButtonSize.medium:
      return 38;
    case ButtonSize.small:
      return 30;
  }
}

EdgeInsets paddingFor(ButtonSize size){
  switch (size){
    case ButtonSize.large:
      return const EdgeInsets.symmetric(horizontal: 24, vertical: 16);
    case ButtonSize.medium:
      return const EdgeInsets.symmetric(horizontal: 20, vertical: 12);
    case ButtonSize.small:
      return const EdgeInsets.symmetric(horizontal: 16, vertical: 8);
  }
}

TextStyle textStyleFor(ButtonSize size, BuildContext context){
  switch (size){
    case ButtonSize.large:
      return Theme.of(context).textTheme.titleSmall!;
    case ButtonSize.medium:
      return Theme.of(context).textTheme.bodySmall!;
    case ButtonSize.small:
      return Theme.of(context).textTheme.labelMedium!;
  }

}
