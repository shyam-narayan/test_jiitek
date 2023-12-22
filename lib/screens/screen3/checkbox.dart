import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckboxController extends GetxController {
  RxBool isChecked = false.obs;
}

class CustomCheckbox extends StatelessWidget {
  final String label;
  final CheckboxController checkboxController;

  const CustomCheckbox(this.label, this.checkboxController, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Obx(() {
        return Row(
          children: [
            InkWell(
              onTap: () {
                checkboxController.isChecked.toggle();
              },
              child: Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(
                    color: checkboxController.isChecked.value
                        ? Colors.transparent
                        : Colors.grey,
                  ),
                  color: checkboxController.isChecked.value
                      ? Colors.deepOrange
                      : Colors.white,
                ),
                child: checkboxController.isChecked.value
                    ? const Icon(
                        Icons.check,
                        color: Colors.white,
                        size: 15,
                      )
                    : null,
              ),
            ),
            const SizedBox(width: 10),
            Text(label),
            const SizedBox(width: 35)
          ],
        );
      }),
    );
  }
}


// Usage:
// Widget _buildCheckbox(String label) {
//   return Row(
//     children: [
//       CustomCheckbox(label),
//       Text(label),
//     ],
//   );
// }
