import 'package:design_system/tokens/token_inputs_sizes.dart';
import 'package:design_system/widgets/inputs/input_text.dart';
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
                spacing: 22,
                children: [
                  TextInput.title(
                    controller: TextEditingController(),
                    size: InputSize.medium,
                    hintText: 'Teste',
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
