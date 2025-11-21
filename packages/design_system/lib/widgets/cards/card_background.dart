import 'package:design_system/widgets/buttons/button_action.dart';
import 'package:design_system/widgets/buttons/button_cancel.dart';
import 'package:design_system/widgets/buttons/button_sizes.dart';
import 'package:design_system/widgets/buttons/button_types.dart';
import 'package:flutter/material.dart';
/// this is the background card, mostly used for depth decoration
class BackgroundCard extends StatelessWidget {
  const BackgroundCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                spacing: 12,
                children: [
                  ActionButton(text: 'Ação grande', size: ButtonSize.large, type: ButtonType.filled, onPressed: (){}),
                  ActionButton(icon: Icons.add, size: ButtonSize.large, type: ButtonType.filled, onPressed: (){}),
                  ActionButton(icon: Icons.add, text: 'Ação grande', size: ButtonSize.large, type: ButtonType.filled, onPressed: (){}),
                  ActionButton(icon: Icons.add, text: 'Ação grande', size: ButtonSize.large, type: ButtonType.outlined, onPressed: (){}),


                  ActionButton(text: 'Ação médio', size: ButtonSize.medium, type: ButtonType.filled, onPressed: (){}),
                  ActionButton(icon: Icons.add, size: ButtonSize.medium, type: ButtonType.filled, onPressed: (){}),
                  ActionButton(icon: Icons.add, text: 'Ação médio', size: ButtonSize.medium, type: ButtonType.filled, onPressed: (){}),
                  ActionButton(icon: Icons.add, text: 'Ação médio', size: ButtonSize.medium, type: ButtonType.outlined, onPressed: (){}),

                  ActionButton(text: 'Ação pequeno', size: ButtonSize.small, type: ButtonType.filled, onPressed: (){}),
                  ActionButton(icon: Icons.add, size: ButtonSize.small, type: ButtonType.filled, onPressed: (){}),
                  ActionButton(icon: Icons.add, text: 'Ação pequeno', size: ButtonSize.small, type: ButtonType.filled, onPressed: (){}),
                  ActionButton(icon: Icons.add, text: 'Ação pequeno', size: ButtonSize.small, type: ButtonType.outlined, onPressed: (){}),

                  CancelButton(text: 'Cancelar grande', size: ButtonSize.large, type: ButtonType.filled, onPressed: (){}),
                  CancelButton(icon: Icons.add, size: ButtonSize.large, type: ButtonType.filled, onPressed: (){}),
                  CancelButton(icon: Icons.add, text: 'Cancelar grande', size: ButtonSize.large, type: ButtonType.filled, onPressed: (){}),
                  CancelButton(icon: Icons.add, text: 'Cancelar grande', size: ButtonSize.large, type: ButtonType.outlined, onPressed: (){}),


                  CancelButton(text: 'Cancelar médio', size: ButtonSize.medium, type: ButtonType.filled, onPressed: (){}),
                  CancelButton(icon: Icons.add, size: ButtonSize.medium, type: ButtonType.filled, onPressed: (){}),
                  CancelButton(icon: Icons.add, text: 'Cancelar médio', size: ButtonSize.medium, type: ButtonType.filled, onPressed: (){}),
                  CancelButton(icon: Icons.add, text: 'Cancelar médio', size: ButtonSize.medium, type: ButtonType.outlined, onPressed: (){}),

                  CancelButton(text: 'Cancelar pequeno', size: ButtonSize.small, type: ButtonType.filled, onPressed: (){}),
                  CancelButton(icon: Icons.add, size: ButtonSize.small, type: ButtonType.filled, onPressed: (){}),
                  CancelButton(icon: Icons.add, text: 'Cancelar pequeno', size: ButtonSize.small, type: ButtonType.filled, onPressed: (){}),
                  CancelButton(icon: Icons.add, text: 'Cancelar pequeno', size: ButtonSize.small, type: ButtonType.outlined, onPressed: (){}),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
